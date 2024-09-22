using Newtonsoft.Json;
using Proyecto.Conexion;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System;
using Xamarin.Forms;

public class TemporizadorViewModel : BindableObject
{
    private int _tiempoReservacion;
    private TimeSpan _tiempoTranscurrido;
    private TimeSpan _nuevoTiempoTranscurrido;
    private bool _temporizadorActivo;
    private bool _nuevoTemporizadorActivo;
    private bool _yaLlegueButtonEnabled;
    private bool _mostrarBotonRegresar;
    private bool _notificacionMostrada; // Flag para controlar que la notificación solo se muestre una vez
    private Color _colorTemporizador;
    private string _firebaseId; // ID de Firebase para la reserva
    private int _spaceID; // ID del espacio de estacionamiento

    public int TiempoReservacion
    {
        get => _tiempoReservacion;
        set
        {
            _tiempoReservacion = value;
            OnPropertyChanged();
        }
    }

    public TimeSpan TiempoTranscurrido
    {
        get => _tiempoTranscurrido;
        set
        {
            _tiempoTranscurrido = value;
            OnPropertyChanged();
        }
    }

    public TimeSpan NuevoTiempoTranscurrido
    {
        get => _nuevoTiempoTranscurrido;
        set
        {
            _nuevoTiempoTranscurrido = value;
            OnPropertyChanged();
        }
    }

    public Color ColorTemporizador
    {
        get => _colorTemporizador;
        set
        {
            _colorTemporizador = value;
            OnPropertyChanged();
        }
    }

    public bool YaLlegueButtonEnabled
    {
        get => _yaLlegueButtonEnabled;
        set
        {
            _yaLlegueButtonEnabled = value;
            OnPropertyChanged();
        }
    }

    public bool MostrarBotonRegresar
    {
        get => _mostrarBotonRegresar;
        set
        {
            _mostrarBotonRegresar = value;
            OnPropertyChanged();
        }
    }

    public Command YaLlegueCommand { get; }
    public Command RegresarCommand { get; }

    public TemporizadorViewModel(string firebaseId, int spaceID)
    {
        _firebaseId = firebaseId;
        _spaceID = spaceID;

        YaLlegueCommand = new Command(IniciarNuevoTemporizador); // Cambiar para iniciar el nuevo temporizador
        RegresarCommand = new Command(Regresar);

        _temporizadorActivo = true;
        _nuevoTemporizadorActivo = false;
        _notificacionMostrada = false; // Inicializamos el flag para la notificación
        YaLlegueButtonEnabled = true;
        MostrarBotonRegresar = false;

        LoadReservationData(firebaseId);
    }

    private async void LoadReservationData(string firebaseId)
    {
        try
        {
            using (var client = new HttpClient())
            {
                var url = $"{DBConn.FirebaseUrl}/reservaciones/{firebaseId}.json";  // URL de la reserva específica
                var response = await client.GetStringAsync(url);

                // Deserializar la respuesta como un diccionario
                var reservationData = JsonConvert.DeserializeObject<Dictionary<string, object>>(response);

                // Asignar el valor de TiempoReservacion desde la respuesta
                TiempoReservacion = reservationData.ContainsKey("TiempoReservacion") ? Convert.ToInt32(reservationData["TiempoReservacion"]) : 0;

                // Iniciar el temporizador
                IniciarTemporizador();
            }
        }
        catch (Exception ex)
        {
            await Application.Current.MainPage.DisplayAlert("Error", $"Error al cargar los datos: {ex.Message}", "OK");
        }
    }

    // Método para iniciar el primer temporizador
    private void IniciarTemporizador()
    {
        TiempoTranscurrido = TimeSpan.Zero;
        ColorTemporizador = Color.Black; // Color inicial

        Device.StartTimer(TimeSpan.FromSeconds(1), () =>
        {
            if (_temporizadorActivo)
            {
                TiempoTranscurrido += TimeSpan.FromSeconds(1);

                // Mostrar alerta un minuto antes solo una vez
                if (!_notificacionMostrada && TiempoReservacion - TiempoTranscurrido.TotalMinutes <= 1 && TiempoReservacion - TiempoTranscurrido.TotalMinutes > 0)
                {
                    _notificacionMostrada = true;  // Evitar que la alerta se muestre más de una vez
                    Application.Current.MainPage.DisplayAlert("Alerta", "Falta 1 minuto para que termine su reserva", "OK");
                }

                // Si se alcanza el tiempo de reservación, cambiar el color a rojo, eliminar reserva y bloquear el botón
                if (TiempoTranscurrido.TotalMinutes >= TiempoReservacion)
                {
                    ColorTemporizador = Color.Red;  // Cambiar el color a rojo
                    _temporizadorActivo = false;  // Detener el temporizador

                    // Bloquear el botón "Ya llegué" y mostrar "Regresar"
                    YaLlegueButtonEnabled = false;
                    MostrarBotonRegresar = true;

                    // Mostrar alerta indicando que la reserva ha sido eliminada
                    Application.Current.MainPage.DisplayAlert("Reserva Eliminada", "Su reserva ha sido eliminada por no cumplir con la hora de ingreso.", "OK");
                }
            }
            return _temporizadorActivo;  // Continuar mientras esté activo
        });
    }

    // Método para iniciar el nuevo temporizador cuando se presiona "Ya llegué"
    private async void IniciarNuevoTemporizador()
    {
        _temporizadorActivo = false; // Detenemos el primer temporizador
        _nuevoTemporizadorActivo = true; // Activamos el nuevo temporizador
        YaLlegueButtonEnabled = false; // Deshabilitar el botón "Ya llegué"
        MostrarBotonRegresar = true; // Mostrar el botón "Regresar"

        NuevoTiempoTranscurrido = TimeSpan.Zero; // Reiniciar el nuevo tiempo

        // Actualizar el estado del espacio en Firebase
        await ActualizarEstadoEspacio(_spaceID, "ocupado");

        Device.StartTimer(TimeSpan.FromSeconds(1), () =>
        {
            if (_nuevoTemporizadorActivo)
            {
                NuevoTiempoTranscurrido += TimeSpan.FromSeconds(1);

                // Mostrar una alerta o realizar alguna acción si es necesario en el nuevo temporizador
                if (NuevoTiempoTranscurrido.TotalMinutes >= 5) // Ejemplo: un temporizador de 5 minutos
                {
                    Application.Current.MainPage.DisplayAlert("Alerta", "El nuevo temporizador ha llegado a 5 minutos.", "OK");
                    _nuevoTemporizadorActivo = false; // Detener el nuevo temporizador
                }
            }
            return _nuevoTemporizadorActivo;  // Continuar mientras esté activo
        });
    }

    // Método para actualizar el estado del espacio en Firebase
    private async Task ActualizarEstadoEspacio(int spaceID, string nuevoEstado)
    {
        try
        {
            using (var client = new HttpClient())
            {
                var url = $"{DBConn.FirebaseUrl}/parkingSpaces/{spaceID}.json";  // URL del espacio de estacionamiento
                var espacioData = new Dictionary<string, object>
                {
                    { "estado", nuevoEstado }
                };

                var json = JsonConvert.SerializeObject(espacioData);
                var content = new StringContent(json, Encoding.UTF8, "application/json");

                // Crear la solicitud PATCH manualmente
                var request = new HttpRequestMessage(new HttpMethod("PATCH"), url) { Content = content };
                var response = await client.SendAsync(request); // Enviar la solicitud PATCH

                if (!response.IsSuccessStatusCode)
                {
                    throw new Exception("No se pudo actualizar el estado del espacio.");
                }
            }
        }
        catch (Exception ex)
        {
            await Application.Current.MainPage.DisplayAlert("Error", $"Error al actualizar el estado del espacio: {ex.Message}", "OK");
        }
    }

    // Método para regresar
    private async void Regresar()
    {
        await Application.Current.MainPage.Navigation.PopAsync();
    }
}