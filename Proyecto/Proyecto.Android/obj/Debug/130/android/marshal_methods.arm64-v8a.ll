; ModuleID = 'obj\Debug\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [246 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 66
	i64 96808603140984794, ; 1: Google.Cloud.Location.dll => 0x157eee9616b8fda => 14
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 25
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 56
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 88
	i64 295915112840604065, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 89
	i64 502670939551102150, ; 6: System.Management.dll => 0x6f9d88e66daf4c6 => 37
	i64 634308326490598313, ; 7: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 75
	i64 702024105029695270, ; 8: System.Drawing.Common => 0x9be17343c0e7726 => 108
	i64 720058930071658100, ; 9: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 69
	i64 872800313462103108, ; 10: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 65
	i64 940822596282819491, ; 11: System.Transactions => 0xd0e792aa81923a3 => 106
	i64 996343623809489702, ; 12: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 101
	i64 1000557547492888992, ; 13: Mono.Security.dll => 0xde2b1c9cba651a0 => 122
	i64 1110718360982711833, ; 14: Proyecto.Android.dll => 0xf6a1076e7e0ee19 => 0
	i64 1120440138749646132, ; 15: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 103
	i64 1315114680217950157, ; 16: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 51
	i64 1425944114962822056, ; 17: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 3
	i64 1624659445732251991, ; 18: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 49
	i64 1628611045998245443, ; 19: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 77
	i64 1636321030536304333, ; 20: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 70
	i64 1731380447121279447, ; 21: Newtonsoft.Json => 0x18071957e9b889d7 => 27
	i64 1743969030606105336, ; 22: System.Memory.dll => 0x1833d297e88f2af8 => 38
	i64 1769105627832031750, ; 23: Google.Protobuf => 0x188d203205129a06 => 16
	i64 1795316252682057001, ; 24: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 50
	i64 1836611346387731153, ; 25: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 88
	i64 1865037103900624886, ; 26: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 22
	i64 1875917498431009007, ; 27: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 47
	i64 1981742497975770890, ; 28: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 76
	i64 2040001226662520565, ; 29: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 121
	i64 2133195048986300728, ; 30: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 27
	i64 2136356949452311481, ; 31: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 81
	i64 2165725771938924357, ; 32: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 54
	i64 2262844636196693701, ; 33: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 65
	i64 2284400282711631002, ; 34: System.Web.Services => 0x1fb3d1f42fd4249a => 111
	i64 2329709569556905518, ; 35: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 73
	i64 2337758774805907496, ; 36: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 42
	i64 2445261912722553526, ; 37: Google.Cloud.Firestore.dll => 0x21ef50c10a9ebab6 => 12
	i64 2470498323731680442, ; 38: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 60
	i64 2479423007379663237, ; 39: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 93
	i64 2497223385847772520, ; 40: System.Runtime => 0x22a7eb7046413568 => 43
	i64 2547086958574651984, ; 41: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 46
	i64 2592350477072141967, ; 42: System.Xml.dll => 0x23f9e10627330e8f => 44
	i64 2624866290265602282, ; 43: mscorlib.dll => 0x246d65fbde2db8ea => 26
	i64 2694427813909235223, ; 44: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 85
	i64 2731845168086384092, ; 45: Proyecto => 0x25e976b4d927fddc => 28
	i64 2783046991838674048, ; 46: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 42
	i64 2793798415465922783, ; 47: Proyecto.Android => 0x26c590db4fe540df => 0
	i64 2812926542227278819, ; 48: Google.Apis.Core.dll => 0x270985c960b98be3 => 10
	i64 2960931600190307745, ; 49: Xamarin.Forms.Core => 0x2917579a49927da1 => 99
	i64 3017704767998173186, ; 50: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 103
	i64 3289520064315143713, ; 51: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 72
	i64 3303437397778967116, ; 52: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 48
	i64 3311221304742556517, ; 53: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 41
	i64 3430216265859992823, ; 54: Grpc.Auth.dll => 0x2f9a93850d5a0cf7 => 17
	i64 3493805808809882663, ; 55: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 91
	i64 3522470458906976663, ; 56: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 90
	i64 3531994851595924923, ; 57: System.Numerics => 0x31042a9aade235bb => 40
	i64 3571415421602489686, ; 58: System.Runtime.dll => 0x319037675df7e556 => 43
	i64 3716579019761409177, ; 59: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 60: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 87
	i64 3772598417116884899, ; 61: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 66
	i64 3893087497687830326, ; 62: Google.Cloud.Firestore.V1.dll => 0x36070673e3328f36 => 13
	i64 3966267475168208030, ; 63: System.Memory => 0x370b03412596249e => 38
	i64 4009997192427317104, ; 64: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 116
	i64 4056584864658557221, ; 65: Google.Apis.Auth => 0x384be27113330925 => 9
	i64 4525561845656915374, ; 66: System.ServiceModel.Internals => 0x3ece06856b710dae => 112
	i64 4636684751163556186, ; 67: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 95
	i64 4782108999019072045, ; 68: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 53
	i64 4794310189461587505, ; 69: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 46
	i64 4795410492532947900, ; 70: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 90
	i64 5098983611934048327, ; 71: Google.Cloud.Location => 0x46c33a9458de0047 => 14
	i64 5142919913060024034, ; 72: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 100
	i64 5203618020066742981, ; 73: Xamarin.Essentials => 0x4836f704f0e652c5 => 98
	i64 5205316157927637098, ; 74: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 79
	i64 5348796042099802469, ; 75: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 80
	i64 5376510917114486089, ; 76: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 93
	i64 5408338804355907810, ; 77: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 92
	i64 5446034149219586269, ; 78: System.Diagnostics.Debug => 0x4b94333452e150dd => 113
	i64 5451019430259338467, ; 79: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 59
	i64 5507995362134886206, ; 80: System.Core.dll => 0x4c705499688c873e => 32
	i64 5665389054145784248, ; 81: Google.Apis.Core => 0x4e9f815406bee9b8 => 10
	i64 5692067934154308417, ; 82: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 97
	i64 5757522595884336624, ; 83: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 57
	i64 5814345312393086621, ; 84: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 85
	i64 5896680224035167651, ; 85: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 74
	i64 6085203216496545422, ; 86: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 101
	i64 6086316965293125504, ; 87: FormsViewGroup.dll => 0x5476f10882baef80 => 5
	i64 6218967553231149354, ; 88: Firebase.Auth.dll => 0x564e360a4805d92a => 4
	i64 6319713645133255417, ; 89: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 75
	i64 6401687960814735282, ; 90: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 73
	i64 6504860066809920875, ; 91: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 54
	i64 6548213210057960872, ; 92: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 63
	i64 6591024623626361694, ; 93: System.Web.Services.dll => 0x5b7805f9751a1b5e => 111
	i64 6659513131007730089, ; 94: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 69
	i64 6876862101832370452, ; 95: System.Xml.Linq => 0x5f6f85a57d108914 => 45
	i64 6894844156784520562, ; 96: System.Numerics.Vectors => 0x5faf683aead1ad72 => 41
	i64 6987056692196838363, ; 97: System.Management => 0x60f7030ae3e88bdb => 37
	i64 7036436454368433159, ; 98: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 71
	i64 7103753931438454322, ; 99: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 68
	i64 7270811800166795866, ; 100: System.Linq => 0x64e71ccf51a90a5a => 118
	i64 7338192458477945005, ; 101: System.Reflection => 0x65d67f295d0740ad => 114
	i64 7488575175965059935, ; 102: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 45
	i64 7621211152690795761, ; 103: Google.LongRunning.dll => 0x69c3fb2a1a6154f1 => 15
	i64 7635363394907363464, ; 104: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 99
	i64 7637365915383206639, ; 105: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 98
	i64 7654504624184590948, ; 106: System.Net.Http => 0x6a3a4366801b8264 => 39
	i64 7740912860115050295, ; 107: Google.Api.CommonProtos => 0x6b6d3f3bb0691f37 => 6
	i64 7820441508502274321, ; 108: System.Data => 0x6c87ca1e14ff8111 => 105
	i64 7836164640616011524, ; 109: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 49
	i64 7843473411302439824, ; 110: Google.LongRunning => 0x6cd99d82d5e73b90 => 15
	i64 8044118961405839122, ; 111: System.ComponentModel.Composition => 0x6fa2739369944712 => 110
	i64 8064050204834738623, ; 112: System.Collections.dll => 0x6fe942efa61731bf => 117
	i64 8083354569033831015, ; 113: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 72
	i64 8087206902342787202, ; 114: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 33
	i64 8103644804370223335, ; 115: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 107
	i64 8113615946733131500, ; 116: System.Reflection.Extensions => 0x70995ab73cf916ec => 2
	i64 8167236081217502503, ; 117: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 21
	i64 8185542183669246576, ; 118: System.Collections => 0x7198e33f4794aa70 => 117
	i64 8293702073711834350, ; 119: System.Linq.Async => 0x731926181883b4ee => 36
	i64 8398329775253868912, ; 120: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 58
	i64 8400357532724379117, ; 121: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 84
	i64 8518412311883997971, ; 122: System.Collections.Immutable => 0x76377add7c28e313 => 31
	i64 8601935802264776013, ; 123: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 92
	i64 8626175481042262068, ; 124: Java.Interop => 0x77b654e585b55834 => 21
	i64 8639588376636138208, ; 125: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 83
	i64 8684531736582871431, ; 126: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 109
	i64 8685687024490312494, ; 127: Google.Api.Gax.Grpc => 0x7889c2547cf6f32e => 8
	i64 8725526185868997716, ; 128: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 33
	i64 9312692141327339315, ; 129: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 97
	i64 9324707631942237306, ; 130: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 50
	i64 9404599086328396064, ; 131: Grpc.Net.Client.dll => 0x8283d90a93913920 => 19
	i64 9662334977499516867, ; 132: System.Numerics.dll => 0x8617827802b0cfc3 => 40
	i64 9678050649315576968, ; 133: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 60
	i64 9711637524876806384, ; 134: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 80
	i64 9808709177481450983, ; 135: Mono.Android.dll => 0x881f890734e555e7 => 25
	i64 9825649861376906464, ; 136: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 57
	i64 9834056768316610435, ; 137: System.Transactions.dll => 0x8879968718899783 => 106
	i64 9959489431142554298, ; 138: System.CodeDom => 0x8a3736deb7825aba => 30
	i64 9998632235833408227, ; 139: Mono.Security => 0x8ac2470b209ebae3 => 122
	i64 10038780035334861115, ; 140: System.Net.Http.dll => 0x8b50e941206af13b => 39
	i64 10051920404523413229, ; 141: Grpc.Net.Common => 0x8b7f9859be1e6eed => 20
	i64 10229024438826829339, ; 142: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 63
	i64 10282208442277544177, ; 143: Google.Cloud.Firestore.V1 => 0x8eb1be19cc79c0f1 => 13
	i64 10360651442923773544, ; 144: System.Text.Encoding => 0x8fc86d98211c1e68 => 120
	i64 10376576884623852283, ; 145: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 91
	i64 10430153318873392755, ; 146: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 61
	i64 10447083246144586668, ; 147: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 22
	i64 10823124638835005028, ; 148: Google.Api.Gax.dll => 0x963376840189d664 => 7
	i64 10847732767863316357, ; 149: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 51
	i64 10854473764158213966, ; 150: Grpc.Core.Api.dll => 0x96a2d66108728f4e => 18
	i64 10953751836886437922, ; 151: System.Linq.Async.dll => 0x98038b429b661022 => 36
	i64 11002576679268595294, ; 152: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 24
	i64 11023048688141570732, ; 153: System.Core => 0x98f9bc61168392ac => 32
	i64 11037814507248023548, ; 154: System.Xml => 0x992e31d0412bf7fc => 44
	i64 11162124722117608902, ; 155: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 96
	i64 11326322297822330275, ; 156: Google.Cloud.Firestore => 0x9d2f2e1ed5493da3 => 12
	i64 11340910727871153756, ; 157: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 62
	i64 11392833485892708388, ; 158: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 86
	i64 11435314654401632883, ; 159: Grpc.Core.Api => 0x9eb266175e6d9a73 => 18
	i64 11441445377436144712, ; 160: Grpc.Net.Common.dll => 0x9ec82df38f1dd448 => 20
	i64 11529969570048099689, ; 161: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 96
	i64 11543207250219725293, ; 162: Grpc.Net.Client => 0xa031b5d5e60f71ed => 19
	i64 11578238080964724296, ; 163: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 71
	i64 11580057168383206117, ; 164: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 47
	i64 11597940890313164233, ; 165: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 166: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 68
	i64 11743665907891708234, ; 167: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 115
	i64 12102847907131387746, ; 168: System.Buffers => 0xa7f5f40c43256f62 => 29
	i64 12123043025855404482, ; 169: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 2
	i64 12137774235383566651, ; 170: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 94
	i64 12201331334810686224, ; 171: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 116
	i64 12269460666702402136, ; 172: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 31
	i64 12437742355241350664, ; 173: Google.Apis.dll => 0xac9bbcc62bfdb608 => 11
	i64 12451044538927396471, ; 174: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 67
	i64 12466513435562512481, ; 175: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 78
	i64 12487638416075308985, ; 176: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 64
	i64 12528155905152483962, ; 177: Firebase.Auth => 0xaddcf36b3153827a => 4
	i64 12538491095302438457, ; 178: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 55
	i64 12550732019250633519, ; 179: System.IO.Compression => 0xae2d28465e8e1b2f => 35
	i64 12700543734426720211, ; 180: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 56
	i64 12958614573187252691, ; 181: Google.Apis => 0xb3d63f4bf006c1d3 => 11
	i64 12963446364377008305, ; 182: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 108
	i64 13370592475155966277, ; 183: System.Runtime.Serialization => 0xb98de304062ea945 => 3
	i64 13401370062847626945, ; 184: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 94
	i64 13404347523447273790, ; 185: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 58
	i64 13454009404024712428, ; 186: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 104
	i64 13491513212026656886, ; 187: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 52
	i64 13572454107664307259, ; 188: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 87
	i64 13647894001087880694, ; 189: System.Data.dll => 0xbd670f48cb071df6 => 105
	i64 13782512541859110153, ; 190: Google.Apis.Auth.dll => 0xbf45522249e0dd09 => 9
	i64 13959074834287824816, ; 191: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 67
	i64 13967638549803255703, ; 192: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 100
	i64 14124974489674258913, ; 193: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 55
	i64 14125464355221830302, ; 194: System.Threading.dll => 0xc407bafdbc707a9e => 119
	i64 14172845254133543601, ; 195: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 81
	i64 14261073672896646636, ; 196: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 86
	i64 14327695147300244862, ; 197: System.Reflection.dll => 0xc6d632d338eb4d7e => 114
	i64 14486659737292545672, ; 198: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 74
	i64 14644440854989303794, ; 199: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 79
	i64 14650706219563630045, ; 200: Grpc.Auth => 0xcb51c3af15b23ddd => 17
	i64 14792063746108907174, ; 201: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 104
	i64 14852515768018889994, ; 202: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 62
	i64 14954917835170835695, ; 203: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 23
	i64 14987728460634540364, ; 204: System.IO.Compression.dll => 0xcfff1ba06622494c => 35
	i64 14988210264188246988, ; 205: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 64
	i64 15097078878581906526, ; 206: Google.Api.Gax.Grpc.dll => 0xd183994097ed5c5e => 8
	i64 15133485256822086103, ; 207: System.Linq.dll => 0xd204f0a9127dd9d7 => 118
	i64 15370334346939861994, ; 208: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 61
	i64 15391712275433856905, ; 209: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 23
	i64 15526743539506359484, ; 210: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 120
	i64 15582737692548360875, ; 211: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 77
	i64 15609085926864131306, ; 212: System.dll => 0xd89e9cf3334914ea => 34
	i64 15777549416145007739, ; 213: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 89
	i64 15810740023422282496, ; 214: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 102
	i64 15817206913877585035, ; 215: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 115
	i64 15963349826457351533, ; 216: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 121
	i64 16154507427712707110, ; 217: System => 0xe03056ea4e39aa26 => 34
	i64 16321164108206115771, ; 218: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 24
	i64 16519737307681167356, ; 219: Proyecto.dll => 0xe541e58e571a97fc => 28
	i64 16565028646146589191, ; 220: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 110
	i64 16621146507174665210, ; 221: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 59
	i64 16677317093839702854, ; 222: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 84
	i64 16822611501064131242, ; 223: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 107
	i64 16833383113903931215, ; 224: mscorlib => 0xe99c30c1484d7f4f => 26
	i64 16955525858597485057, ; 225: Google.Api.Gax => 0xeb4e20ef25a73a01 => 7
	i64 16991533501433402966, ; 226: Google.Api.CommonProtos.dll => 0xebce0db1ce165656 => 6
	i64 17024911836938395553, ; 227: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 48
	i64 17031351772568316411, ; 228: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 82
	i64 17037200463775726619, ; 229: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 70
	i64 17544493274320527064, ; 230: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 53
	i64 17553799493972570483, ; 231: Google.Protobuf.dll => 0xf39b9fa2c0aab173 => 16
	i64 17685921127322830888, ; 232: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 113
	i64 17704177640604968747, ; 233: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 78
	i64 17710060891934109755, ; 234: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 76
	i64 17743407583038752114, ; 235: System.CodeDom.dll => 0xf63d3f302bff4572 => 30
	i64 17838668724098252521, ; 236: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 29
	i64 17882897186074144999, ; 237: FormsViewGroup => 0xf82cd03e3ac830e7 => 5
	i64 17892495832318972303, ; 238: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 102
	i64 17928294245072900555, ; 239: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 109
	i64 18025913125965088385, ; 240: System.Threading => 0xfa28e87b91334681 => 119
	i64 18116111925905154859, ; 241: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 52
	i64 18121036031235206392, ; 242: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 82
	i64 18129453464017766560, ; 243: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 112
	i64 18305135509493619199, ; 244: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 83
	i64 18380184030268848184 ; 245: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 95
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [246 x i32] [
	i32 66, i32 14, i32 25, i32 56, i32 88, i32 89, i32 37, i32 75, ; 0..7
	i32 108, i32 69, i32 65, i32 106, i32 101, i32 122, i32 0, i32 103, ; 8..15
	i32 51, i32 3, i32 49, i32 77, i32 70, i32 27, i32 38, i32 16, ; 16..23
	i32 50, i32 88, i32 22, i32 47, i32 76, i32 121, i32 27, i32 81, ; 24..31
	i32 54, i32 65, i32 111, i32 73, i32 42, i32 12, i32 60, i32 93, ; 32..39
	i32 43, i32 46, i32 44, i32 26, i32 85, i32 28, i32 42, i32 0, ; 40..47
	i32 10, i32 99, i32 103, i32 72, i32 48, i32 41, i32 17, i32 91, ; 48..55
	i32 90, i32 40, i32 43, i32 1, i32 87, i32 66, i32 13, i32 38, ; 56..63
	i32 116, i32 9, i32 112, i32 95, i32 53, i32 46, i32 90, i32 14, ; 64..71
	i32 100, i32 98, i32 79, i32 80, i32 93, i32 92, i32 113, i32 59, ; 72..79
	i32 32, i32 10, i32 97, i32 57, i32 85, i32 74, i32 101, i32 5, ; 80..87
	i32 4, i32 75, i32 73, i32 54, i32 63, i32 111, i32 69, i32 45, ; 88..95
	i32 41, i32 37, i32 71, i32 68, i32 118, i32 114, i32 45, i32 15, ; 96..103
	i32 99, i32 98, i32 39, i32 6, i32 105, i32 49, i32 15, i32 110, ; 104..111
	i32 117, i32 72, i32 33, i32 107, i32 2, i32 21, i32 117, i32 36, ; 112..119
	i32 58, i32 84, i32 31, i32 92, i32 21, i32 83, i32 109, i32 8, ; 120..127
	i32 33, i32 97, i32 50, i32 19, i32 40, i32 60, i32 80, i32 25, ; 128..135
	i32 57, i32 106, i32 30, i32 122, i32 39, i32 20, i32 63, i32 13, ; 136..143
	i32 120, i32 91, i32 61, i32 22, i32 7, i32 51, i32 18, i32 36, ; 144..151
	i32 24, i32 32, i32 44, i32 96, i32 12, i32 62, i32 86, i32 18, ; 152..159
	i32 20, i32 96, i32 19, i32 71, i32 47, i32 1, i32 68, i32 115, ; 160..167
	i32 29, i32 2, i32 94, i32 116, i32 31, i32 11, i32 67, i32 78, ; 168..175
	i32 64, i32 4, i32 55, i32 35, i32 56, i32 11, i32 108, i32 3, ; 176..183
	i32 94, i32 58, i32 104, i32 52, i32 87, i32 105, i32 9, i32 67, ; 184..191
	i32 100, i32 55, i32 119, i32 81, i32 86, i32 114, i32 74, i32 79, ; 192..199
	i32 17, i32 104, i32 62, i32 23, i32 35, i32 64, i32 8, i32 118, ; 200..207
	i32 61, i32 23, i32 120, i32 77, i32 34, i32 89, i32 102, i32 115, ; 208..215
	i32 121, i32 34, i32 24, i32 28, i32 110, i32 59, i32 84, i32 107, ; 216..223
	i32 26, i32 7, i32 6, i32 48, i32 82, i32 70, i32 53, i32 16, ; 224..231
	i32 113, i32 78, i32 76, i32 30, i32 29, i32 5, i32 102, i32 109, ; 232..239
	i32 119, i32 52, i32 82, i32 112, i32 83, i32 95 ; 240..245
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
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
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
