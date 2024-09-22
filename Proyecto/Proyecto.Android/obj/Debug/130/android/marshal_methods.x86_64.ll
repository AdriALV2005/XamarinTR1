; ModuleID = 'obj\Debug\130\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [270 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 77
	i64 96808603140984794, ; 1: Google.Cloud.Location.dll => 0x157eee9616b8fda => 18
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 30
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 67
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 99
	i64 263803244706540312, ; 5: Rg.Plugins.Popup.dll => 0x3a937a743542b18 => 35
	i64 295915112840604065, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 100
	i64 308826992458506653, ; 7: SkiaSharp.Extended.dll => 0x4492c836e8aa19d => 37
	i64 464346026994987652, ; 8: System.Reactive.dll => 0x671b04057e67284 => 52
	i64 502670939551102150, ; 9: System.Management.dll => 0x6f9d88e66daf4c6 => 48
	i64 634308326490598313, ; 10: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 86
	i64 670107554435801057, ; 11: SkiaSharp.Extended.Svg.dll => 0x94cb34537739fe1 => 38
	i64 702024105029695270, ; 12: System.Drawing.Common => 0x9be17343c0e7726 => 4
	i64 720058930071658100, ; 13: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 80
	i64 872800313462103108, ; 14: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 76
	i64 940822596282819491, ; 15: System.Transactions => 0xd0e792aa81923a3 => 118
	i64 996343623809489702, ; 16: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 113
	i64 1000557547492888992, ; 17: Mono.Security.dll => 0xde2b1c9cba651a0 => 134
	i64 1110718360982711833, ; 18: Proyecto.Android.dll => 0xf6a1076e7e0ee19 => 0
	i64 1120440138749646132, ; 19: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 115
	i64 1315114680217950157, ; 20: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 62
	i64 1425944114962822056, ; 21: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 6
	i64 1624659445732251991, ; 22: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 60
	i64 1628611045998245443, ; 23: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 88
	i64 1636321030536304333, ; 24: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 81
	i64 1731380447121279447, ; 25: Newtonsoft.Json => 0x18071957e9b889d7 => 32
	i64 1743969030606105336, ; 26: System.Memory.dll => 0x1833d297e88f2af8 => 49
	i64 1769105627832031750, ; 27: Google.Protobuf => 0x188d203205129a06 => 20
	i64 1795316252682057001, ; 28: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 61
	i64 1836611346387731153, ; 29: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 99
	i64 1865037103900624886, ; 30: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 27
	i64 1875917498431009007, ; 31: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 58
	i64 1981742497975770890, ; 32: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 87
	i64 2040001226662520565, ; 33: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 133
	i64 2133195048986300728, ; 34: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 32
	i64 2136356949452311481, ; 35: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 92
	i64 2137969380975227603, ; 36: PropertyChanged => 0x1dab97d315b0b2d3 => 33
	i64 2165725771938924357, ; 37: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 65
	i64 2262844636196693701, ; 38: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 76
	i64 2284400282711631002, ; 39: System.Web.Services => 0x1fb3d1f42fd4249a => 123
	i64 2329709569556905518, ; 40: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 84
	i64 2337758774805907496, ; 41: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 53
	i64 2445261912722553526, ; 42: Google.Cloud.Firestore.dll => 0x21ef50c10a9ebab6 => 16
	i64 2470498323731680442, ; 43: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 71
	i64 2479423007379663237, ; 44: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 104
	i64 2497223385847772520, ; 45: System.Runtime => 0x22a7eb7046413568 => 54
	i64 2547086958574651984, ; 46: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 57
	i64 2592350477072141967, ; 47: System.Xml.dll => 0x23f9e10627330e8f => 55
	i64 2624866290265602282, ; 48: mscorlib.dll => 0x246d65fbde2db8ea => 31
	i64 2694427813909235223, ; 49: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 96
	i64 2731845168086384092, ; 50: Proyecto => 0x25e976b4d927fddc => 34
	i64 2783046991838674048, ; 51: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 53
	i64 2793798415465922783, ; 52: Proyecto.Android => 0x26c590db4fe540df => 0
	i64 2812926542227278819, ; 53: Google.Apis.Core.dll => 0x270985c960b98be3 => 14
	i64 2960931600190307745, ; 54: Xamarin.Forms.Core => 0x2917579a49927da1 => 110
	i64 3017704767998173186, ; 55: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 115
	i64 3289520064315143713, ; 56: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 83
	i64 3303437397778967116, ; 57: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 59
	i64 3311221304742556517, ; 58: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 51
	i64 3430216265859992823, ; 59: Grpc.Auth.dll => 0x2f9a93850d5a0cf7 => 21
	i64 3493805808809882663, ; 60: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 102
	i64 3522470458906976663, ; 61: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 101
	i64 3531994851595924923, ; 62: System.Numerics => 0x31042a9aade235bb => 50
	i64 3571415421602489686, ; 63: System.Runtime.dll => 0x319037675df7e556 => 54
	i64 3716579019761409177, ; 64: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 65: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 98
	i64 3772598417116884899, ; 66: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 77
	i64 3893087497687830326, ; 67: Google.Cloud.Firestore.V1.dll => 0x36070673e3328f36 => 17
	i64 3966267475168208030, ; 68: System.Memory => 0x370b03412596249e => 49
	i64 4009997192427317104, ; 69: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 128
	i64 4056584864658557221, ; 70: Google.Apis.Auth => 0x384be27113330925 => 13
	i64 4525561845656915374, ; 71: System.ServiceModel.Internals => 0x3ece06856b710dae => 124
	i64 4636684751163556186, ; 72: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 106
	i64 4782108999019072045, ; 73: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 64
	i64 4794310189461587505, ; 74: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 57
	i64 4795410492532947900, ; 75: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 101
	i64 5098983611934048327, ; 76: Google.Cloud.Location => 0x46c33a9458de0047 => 18
	i64 5142919913060024034, ; 77: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 112
	i64 5203618020066742981, ; 78: Xamarin.Essentials => 0x4836f704f0e652c5 => 109
	i64 5205316157927637098, ; 79: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 90
	i64 5348796042099802469, ; 80: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 91
	i64 5375264076663995773, ; 81: Xamarin.Forms.PancakeView => 0x4a98c632c779bd7d => 111
	i64 5376510917114486089, ; 82: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 104
	i64 5408338804355907810, ; 83: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 103
	i64 5446034149219586269, ; 84: System.Diagnostics.Debug => 0x4b94333452e150dd => 125
	i64 5451019430259338467, ; 85: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 70
	i64 5507995362134886206, ; 86: System.Core.dll => 0x4c705499688c873e => 44
	i64 5665389054145784248, ; 87: Google.Apis.Core => 0x4e9f815406bee9b8 => 14
	i64 5692067934154308417, ; 88: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 108
	i64 5757522595884336624, ; 89: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 68
	i64 5814345312393086621, ; 90: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 96
	i64 5896680224035167651, ; 91: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 85
	i64 6085203216496545422, ; 92: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 113
	i64 6086316965293125504, ; 93: FormsViewGroup.dll => 0x5476f10882baef80 => 9
	i64 6218967553231149354, ; 94: Firebase.Auth.dll => 0x564e360a4805d92a => 7
	i64 6319713645133255417, ; 95: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 86
	i64 6401687960814735282, ; 96: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 84
	i64 6504860066809920875, ; 97: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 65
	i64 6548213210057960872, ; 98: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 74
	i64 6591024623626361694, ; 99: System.Web.Services.dll => 0x5b7805f9751a1b5e => 123
	i64 6659513131007730089, ; 100: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 80
	i64 6671798237668743565, ; 101: SkiaSharp => 0x5c96fd260152998d => 36
	i64 6876862101832370452, ; 102: System.Xml.Linq => 0x5f6f85a57d108914 => 56
	i64 6894844156784520562, ; 103: System.Numerics.Vectors => 0x5faf683aead1ad72 => 51
	i64 6987056692196838363, ; 104: System.Management => 0x60f7030ae3e88bdb => 48
	i64 7036436454368433159, ; 105: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 82
	i64 7103753931438454322, ; 106: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 79
	i64 7141577505875122296, ; 107: System.Runtime.InteropServices.WindowsRuntime.dll => 0x631bfae7659b5878 => 5
	i64 7270811800166795866, ; 108: System.Linq => 0x64e71ccf51a90a5a => 130
	i64 7338192458477945005, ; 109: System.Reflection => 0x65d67f295d0740ad => 126
	i64 7488575175965059935, ; 110: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 56
	i64 7602111570124318452, ; 111: System.Reactive => 0x698020320025a6f4 => 52
	i64 7621211152690795761, ; 112: Google.LongRunning.dll => 0x69c3fb2a1a6154f1 => 19
	i64 7635363394907363464, ; 113: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 110
	i64 7637365915383206639, ; 114: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 109
	i64 7654504624184590948, ; 115: System.Net.Http => 0x6a3a4366801b8264 => 2
	i64 7740912860115050295, ; 116: Google.Api.CommonProtos => 0x6b6d3f3bb0691f37 => 10
	i64 7820441508502274321, ; 117: System.Data => 0x6c87ca1e14ff8111 => 117
	i64 7836164640616011524, ; 118: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 60
	i64 7843473411302439824, ; 119: Google.LongRunning => 0x6cd99d82d5e73b90 => 19
	i64 7927939710195668715, ; 120: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 39
	i64 8044118961405839122, ; 121: System.ComponentModel.Composition => 0x6fa2739369944712 => 122
	i64 8064050204834738623, ; 122: System.Collections.dll => 0x6fe942efa61731bf => 129
	i64 8083354569033831015, ; 123: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 83
	i64 8087206902342787202, ; 124: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 45
	i64 8103644804370223335, ; 125: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 119
	i64 8113615946733131500, ; 126: System.Reflection.Extensions => 0x70995ab73cf916ec => 3
	i64 8167236081217502503, ; 127: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 25
	i64 8185542183669246576, ; 128: System.Collections => 0x7198e33f4794aa70 => 129
	i64 8187102936927221770, ; 129: SkiaSharp.Views.Forms => 0x719e6ebe771ab80a => 40
	i64 8293702073711834350, ; 130: System.Linq.Async => 0x731926181883b4ee => 47
	i64 8398329775253868912, ; 131: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 69
	i64 8400357532724379117, ; 132: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 95
	i64 8518412311883997971, ; 133: System.Collections.Immutable => 0x76377add7c28e313 => 43
	i64 8601935802264776013, ; 134: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 103
	i64 8626175481042262068, ; 135: Java.Interop => 0x77b654e585b55834 => 25
	i64 8639588376636138208, ; 136: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 94
	i64 8684531736582871431, ; 137: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 121
	i64 8685687024490312494, ; 138: Google.Api.Gax.Grpc => 0x7889c2547cf6f32e => 12
	i64 8702320156596882678, ; 139: Firebase.dll => 0x78c4da1357adccf6 => 8
	i64 8725526185868997716, ; 140: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 45
	i64 9057635389615298436, ; 141: LiteDB => 0x7db32f65bf06d784 => 26
	i64 9296667808972889535, ; 142: LiteDB.dll => 0x8104661dcca35dbf => 26
	i64 9312692141327339315, ; 143: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 108
	i64 9324707631942237306, ; 144: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 61
	i64 9404599086328396064, ; 145: Grpc.Net.Client.dll => 0x8283d90a93913920 => 23
	i64 9662334977499516867, ; 146: System.Numerics.dll => 0x8617827802b0cfc3 => 50
	i64 9678050649315576968, ; 147: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 71
	i64 9711637524876806384, ; 148: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 91
	i64 9808709177481450983, ; 149: Mono.Android.dll => 0x881f890734e555e7 => 30
	i64 9825649861376906464, ; 150: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 68
	i64 9834056768316610435, ; 151: System.Transactions.dll => 0x8879968718899783 => 118
	i64 9959489431142554298, ; 152: System.CodeDom => 0x8a3736deb7825aba => 42
	i64 9998632235833408227, ; 153: Mono.Security => 0x8ac2470b209ebae3 => 134
	i64 10038780035334861115, ; 154: System.Net.Http.dll => 0x8b50e941206af13b => 2
	i64 10051920404523413229, ; 155: Grpc.Net.Common => 0x8b7f9859be1e6eed => 24
	i64 10144742755892837524, ; 156: Firebase => 0x8cc95dc98eb5bc94 => 8
	i64 10229024438826829339, ; 157: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 74
	i64 10282208442277544177, ; 158: Google.Cloud.Firestore.V1 => 0x8eb1be19cc79c0f1 => 17
	i64 10360651442923773544, ; 159: System.Text.Encoding => 0x8fc86d98211c1e68 => 132
	i64 10376576884623852283, ; 160: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 102
	i64 10430153318873392755, ; 161: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 72
	i64 10447083246144586668, ; 162: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 27
	i64 10823124638835005028, ; 163: Google.Api.Gax.dll => 0x963376840189d664 => 11
	i64 10847732767863316357, ; 164: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 62
	i64 10854473764158213966, ; 165: Grpc.Core.Api.dll => 0x96a2d66108728f4e => 22
	i64 10953751836886437922, ; 166: System.Linq.Async.dll => 0x98038b429b661022 => 47
	i64 11002576679268595294, ; 167: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 29
	i64 11023048688141570732, ; 168: System.Core => 0x98f9bc61168392ac => 44
	i64 11037814507248023548, ; 169: System.Xml => 0x992e31d0412bf7fc => 55
	i64 11162124722117608902, ; 170: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 107
	i64 11326322297822330275, ; 171: Google.Cloud.Firestore => 0x9d2f2e1ed5493da3 => 16
	i64 11340910727871153756, ; 172: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 73
	i64 11392833485892708388, ; 173: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 97
	i64 11435314654401632883, ; 174: Grpc.Core.Api => 0x9eb266175e6d9a73 => 22
	i64 11441445377436144712, ; 175: Grpc.Net.Common.dll => 0x9ec82df38f1dd448 => 24
	i64 11529969570048099689, ; 176: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 107
	i64 11543207250219725293, ; 177: Grpc.Net.Client => 0xa031b5d5e60f71ed => 23
	i64 11578238080964724296, ; 178: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 82
	i64 11580057168383206117, ; 179: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 58
	i64 11597940890313164233, ; 180: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 181: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 79
	i64 11743665907891708234, ; 182: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 127
	i64 12102847907131387746, ; 183: System.Buffers => 0xa7f5f40c43256f62 => 41
	i64 12123043025855404482, ; 184: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 3
	i64 12137774235383566651, ; 185: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 105
	i64 12201331334810686224, ; 186: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 128
	i64 12269460666702402136, ; 187: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 43
	i64 12437742355241350664, ; 188: Google.Apis.dll => 0xac9bbcc62bfdb608 => 15
	i64 12451044538927396471, ; 189: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 78
	i64 12466513435562512481, ; 190: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 89
	i64 12487638416075308985, ; 191: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 75
	i64 12528155905152483962, ; 192: Firebase.Auth => 0xaddcf36b3153827a => 7
	i64 12538491095302438457, ; 193: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 66
	i64 12550732019250633519, ; 194: System.IO.Compression => 0xae2d28465e8e1b2f => 120
	i64 12700543734426720211, ; 195: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 67
	i64 12958614573187252691, ; 196: Google.Apis => 0xb3d63f4bf006c1d3 => 15
	i64 12963446364377008305, ; 197: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 4
	i64 13370592475155966277, ; 198: System.Runtime.Serialization => 0xb98de304062ea945 => 6
	i64 13401370062847626945, ; 199: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 105
	i64 13404347523447273790, ; 200: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 69
	i64 13454009404024712428, ; 201: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 116
	i64 13491513212026656886, ; 202: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 63
	i64 13492263892638604996, ; 203: SkiaSharp.Views.Forms.dll => 0xbb3e2686788d9ec4 => 40
	i64 13572454107664307259, ; 204: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 98
	i64 13647894001087880694, ; 205: System.Data.dll => 0xbd670f48cb071df6 => 117
	i64 13782512541859110153, ; 206: Google.Apis.Auth.dll => 0xbf45522249e0dd09 => 13
	i64 13959074834287824816, ; 207: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 78
	i64 13967638549803255703, ; 208: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 112
	i64 14030805823765547820, ; 209: PropertyChanged.dll => 0xc2b76f8eee070b2c => 33
	i64 14124974489674258913, ; 210: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 66
	i64 14125464355221830302, ; 211: System.Threading.dll => 0xc407bafdbc707a9e => 131
	i64 14172845254133543601, ; 212: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 92
	i64 14261073672896646636, ; 213: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 97
	i64 14327695147300244862, ; 214: System.Reflection.dll => 0xc6d632d338eb4d7e => 126
	i64 14486659737292545672, ; 215: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 85
	i64 14644440854989303794, ; 216: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 90
	i64 14650706219563630045, ; 217: Grpc.Auth => 0xcb51c3af15b23ddd => 21
	i64 14792063746108907174, ; 218: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 116
	i64 14852515768018889994, ; 219: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 73
	i64 14954917835170835695, ; 220: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 28
	i64 14987728460634540364, ; 221: System.IO.Compression.dll => 0xcfff1ba06622494c => 120
	i64 14988210264188246988, ; 222: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 75
	i64 15097078878581906526, ; 223: Google.Api.Gax.Grpc.dll => 0xd183994097ed5c5e => 12
	i64 15133485256822086103, ; 224: System.Linq.dll => 0xd204f0a9127dd9d7 => 130
	i64 15370334346939861994, ; 225: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 72
	i64 15391712275433856905, ; 226: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 28
	i64 15526743539506359484, ; 227: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 132
	i64 15582737692548360875, ; 228: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 88
	i64 15609085926864131306, ; 229: System.dll => 0xd89e9cf3334914ea => 46
	i64 15777549416145007739, ; 230: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 100
	i64 15810740023422282496, ; 231: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 114
	i64 15817206913877585035, ; 232: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 127
	i64 15963349826457351533, ; 233: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 133
	i64 16154507427712707110, ; 234: System => 0xe03056ea4e39aa26 => 46
	i64 16321164108206115771, ; 235: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 29
	i64 16324796876805858114, ; 236: SkiaSharp.dll => 0xe28d5444586b6342 => 36
	i64 16519737307681167356, ; 237: Proyecto.dll => 0xe541e58e571a97fc => 34
	i64 16565028646146589191, ; 238: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 122
	i64 16621146507174665210, ; 239: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 70
	i64 16677317093839702854, ; 240: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 95
	i64 16822611501064131242, ; 241: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 119
	i64 16833383113903931215, ; 242: mscorlib => 0xe99c30c1484d7f4f => 31
	i64 16866861824412579935, ; 243: System.Runtime.InteropServices.WindowsRuntime => 0xea132176ffb5785f => 5
	i64 16955525858597485057, ; 244: Google.Api.Gax => 0xeb4e20ef25a73a01 => 11
	i64 16961387572093531548, ; 245: SkiaSharp.Extended => 0xeb62f421ac5c359c => 37
	i64 16991533501433402966, ; 246: Google.Api.CommonProtos.dll => 0xebce0db1ce165656 => 10
	i64 17024911836938395553, ; 247: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 59
	i64 17031351772568316411, ; 248: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 93
	i64 17037200463775726619, ; 249: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 81
	i64 17089166281881057141, ; 250: SkiaSharp.Extended.Svg => 0xed28ea30eb1a7775 => 38
	i64 17285063141349522879, ; 251: Rg.Plugins.Popup => 0xefe0e158cc55fdbf => 35
	i64 17544493274320527064, ; 252: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 64
	i64 17553799493972570483, ; 253: Google.Protobuf.dll => 0xf39b9fa2c0aab173 => 20
	i64 17671790519499593115, ; 254: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 39
	i64 17685921127322830888, ; 255: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 125
	i64 17704177640604968747, ; 256: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 89
	i64 17710060891934109755, ; 257: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 87
	i64 17743407583038752114, ; 258: System.CodeDom.dll => 0xf63d3f302bff4572 => 42
	i64 17827832363535584534, ; 259: Xamarin.Forms.PancakeView.dll => 0xf7692f1427c04d16 => 111
	i64 17838668724098252521, ; 260: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 41
	i64 17882897186074144999, ; 261: FormsViewGroup => 0xf82cd03e3ac830e7 => 9
	i64 17892495832318972303, ; 262: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 114
	i64 17928294245072900555, ; 263: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 121
	i64 18025913125965088385, ; 264: System.Threading => 0xfa28e87b91334681 => 131
	i64 18116111925905154859, ; 265: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 63
	i64 18121036031235206392, ; 266: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 93
	i64 18129453464017766560, ; 267: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 124
	i64 18305135509493619199, ; 268: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 94
	i64 18380184030268848184 ; 269: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 106
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [270 x i32] [
	i32 77, i32 18, i32 30, i32 67, i32 99, i32 35, i32 100, i32 37, ; 0..7
	i32 52, i32 48, i32 86, i32 38, i32 4, i32 80, i32 76, i32 118, ; 8..15
	i32 113, i32 134, i32 0, i32 115, i32 62, i32 6, i32 60, i32 88, ; 16..23
	i32 81, i32 32, i32 49, i32 20, i32 61, i32 99, i32 27, i32 58, ; 24..31
	i32 87, i32 133, i32 32, i32 92, i32 33, i32 65, i32 76, i32 123, ; 32..39
	i32 84, i32 53, i32 16, i32 71, i32 104, i32 54, i32 57, i32 55, ; 40..47
	i32 31, i32 96, i32 34, i32 53, i32 0, i32 14, i32 110, i32 115, ; 48..55
	i32 83, i32 59, i32 51, i32 21, i32 102, i32 101, i32 50, i32 54, ; 56..63
	i32 1, i32 98, i32 77, i32 17, i32 49, i32 128, i32 13, i32 124, ; 64..71
	i32 106, i32 64, i32 57, i32 101, i32 18, i32 112, i32 109, i32 90, ; 72..79
	i32 91, i32 111, i32 104, i32 103, i32 125, i32 70, i32 44, i32 14, ; 80..87
	i32 108, i32 68, i32 96, i32 85, i32 113, i32 9, i32 7, i32 86, ; 88..95
	i32 84, i32 65, i32 74, i32 123, i32 80, i32 36, i32 56, i32 51, ; 96..103
	i32 48, i32 82, i32 79, i32 5, i32 130, i32 126, i32 56, i32 52, ; 104..111
	i32 19, i32 110, i32 109, i32 2, i32 10, i32 117, i32 60, i32 19, ; 112..119
	i32 39, i32 122, i32 129, i32 83, i32 45, i32 119, i32 3, i32 25, ; 120..127
	i32 129, i32 40, i32 47, i32 69, i32 95, i32 43, i32 103, i32 25, ; 128..135
	i32 94, i32 121, i32 12, i32 8, i32 45, i32 26, i32 26, i32 108, ; 136..143
	i32 61, i32 23, i32 50, i32 71, i32 91, i32 30, i32 68, i32 118, ; 144..151
	i32 42, i32 134, i32 2, i32 24, i32 8, i32 74, i32 17, i32 132, ; 152..159
	i32 102, i32 72, i32 27, i32 11, i32 62, i32 22, i32 47, i32 29, ; 160..167
	i32 44, i32 55, i32 107, i32 16, i32 73, i32 97, i32 22, i32 24, ; 168..175
	i32 107, i32 23, i32 82, i32 58, i32 1, i32 79, i32 127, i32 41, ; 176..183
	i32 3, i32 105, i32 128, i32 43, i32 15, i32 78, i32 89, i32 75, ; 184..191
	i32 7, i32 66, i32 120, i32 67, i32 15, i32 4, i32 6, i32 105, ; 192..199
	i32 69, i32 116, i32 63, i32 40, i32 98, i32 117, i32 13, i32 78, ; 200..207
	i32 112, i32 33, i32 66, i32 131, i32 92, i32 97, i32 126, i32 85, ; 208..215
	i32 90, i32 21, i32 116, i32 73, i32 28, i32 120, i32 75, i32 12, ; 216..223
	i32 130, i32 72, i32 28, i32 132, i32 88, i32 46, i32 100, i32 114, ; 224..231
	i32 127, i32 133, i32 46, i32 29, i32 36, i32 34, i32 122, i32 70, ; 232..239
	i32 95, i32 119, i32 31, i32 5, i32 11, i32 37, i32 10, i32 59, ; 240..247
	i32 93, i32 81, i32 38, i32 35, i32 64, i32 20, i32 39, i32 125, ; 248..255
	i32 89, i32 87, i32 42, i32 111, i32 41, i32 9, i32 114, i32 121, ; 256..263
	i32 131, i32 63, i32 93, i32 124, i32 94, i32 106 ; 264..269
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
