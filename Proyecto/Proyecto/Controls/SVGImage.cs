using SkiaSharp;
using SkiaSharp.Views.Forms;
using System;
using System.IO;
using System.Reflection;
using Xamarin.Forms;

namespace Proyecto.Controls
{
    public class SVGImage : ContentView
    {
        private readonly SKCanvasView canvasView = new SKCanvasView();

        public static readonly BindableProperty SourceProperty = BindableProperty.Create(
            propertyName: nameof(Source),
            returnType: typeof(string),
            declaringType: typeof(SVGImage),
            defaultValue: default(string),
            propertyChanged: RedrawCanvas
        );

        public string Source
        {
            get => (string)GetValue(SourceProperty);
            set => SetValue(SourceProperty, value);
        }

        public SVGImage()
        {
            Padding = new Thickness(0);
            BackgroundColor = Color.Transparent;
            canvasView.WidthRequest = 300; // Tamaño de prueba
            canvasView.HeightRequest = 300; // Tamaño de prueba
            Content = canvasView;
            canvasView.PaintSurface += CanvasView_PaintSurface;
        }

        private void CanvasView_PaintSurface(object sender, SKPaintSurfaceEventArgs e)
        {
            SKCanvas sKCanvas = e.Surface.Canvas;
            sKCanvas.Clear();  // Limpia el canvas antes de dibujar

            if (string.IsNullOrEmpty(this.Source))
            {
                Console.WriteLine("Source está vacío");
                return;
            }

            var assembly = typeof(SVGImage).GetTypeInfo().Assembly;
            var resourceName = $"{assembly.GetName().Name}.Images.{Source}";

            using (Stream stream = assembly.GetManifestResourceStream(resourceName))
            {
                if (stream == null)
                {
                    Console.WriteLine($"No se pudo encontrar el recurso: {resourceName}");
                    return;
                }

                SkiaSharp.Extended.Svg.SKSvg sKSvg = new SkiaSharp.Extended.Svg.SKSvg();
                sKSvg.Load(stream);

                if (sKSvg.Picture == null)
                {
                    Console.WriteLine("No se pudo cargar el SVG");
                    return;
                }

                SKRect rectBounds = sKSvg.Picture.CullRect;
                SKImageInfo imageInfo = e.Info;

                sKCanvas.Save(); // Guardar el estado del canvas

                sKCanvas.Translate(imageInfo.Width / 2f, imageInfo.Height / 2f);

                float xRatio = imageInfo.Width / rectBounds.Width;
                float yRatio = imageInfo.Height / rectBounds.Height;
                float minRatio = Math.Min(xRatio, yRatio);

                sKCanvas.Scale(minRatio);
                sKCanvas.Translate(-rectBounds.MidX, -rectBounds.MidY);

                sKCanvas.DrawPicture(sKSvg.Picture);

                sKCanvas.Restore(); // Restaurar el estado del canvas
            }
        }

        private static void RedrawCanvas(BindableObject bindable, object oldValue, object newValue)
        {
            SVGImage sVGImage = bindable as SVGImage;
            sVGImage?.canvasView.InvalidateSurface();
        }
    }
}
