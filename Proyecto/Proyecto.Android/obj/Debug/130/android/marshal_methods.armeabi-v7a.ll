; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [268 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 85
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 115
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 32
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 109
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 99
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 99
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 66
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 100
	i32 209399409, ; 8: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 64
	i32 220171995, ; 9: System.Diagnostics.Debug => 0xd1f8edb => 124
	i32 230216969, ; 10: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 80
	i32 232815796, ; 11: System.Web.Services => 0xde07cb4 => 122
	i32 261689757, ; 12: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 69
	i32 278686392, ; 13: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 84
	i32 280482487, ; 14: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 78
	i32 318968648, ; 15: Xamarin.AndroidX.Activity.dll => 0x13031348 => 56
	i32 321597661, ; 16: System.Numerics => 0x132b30dd => 49
	i32 342366114, ; 17: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 82
	i32 364956269, ; 18: Grpc.Net.Common => 0x15c0ca6d => 24
	i32 371306672, ; 19: Grpc.Core.Api.dll => 0x1621b0b0 => 22
	i32 382590210, ; 20: SkiaSharp.Extended.dll => 0x16cddd02 => 36
	i32 385762202, ; 21: System.Memory.dll => 0x16fe439a => 48
	i32 391886110, ; 22: Grpc.Net.Client.dll => 0x175bb51e => 23
	i32 393699800, ; 23: Firebase => 0x177761d8 => 8
	i32 441335492, ; 24: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 68
	i32 442521989, ; 25: Xamarin.Essentials => 0x1a605985 => 108
	i32 442565967, ; 26: System.Collections => 0x1a61054f => 128
	i32 450948140, ; 27: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 77
	i32 459347974, ; 28: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 127
	i32 465846621, ; 29: mscorlib => 0x1bc4415d => 31
	i32 469710990, ; 30: System.dll => 0x1bff388e => 45
	i32 476646585, ; 31: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 78
	i32 486930444, ; 32: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 89
	i32 525008092, ; 33: SkiaSharp.dll => 0x1f4afcdc => 35
	i32 526420162, ; 34: System.Transactions.dll => 0x1f6088c2 => 117
	i32 548916678, ; 35: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 27
	i32 605376203, ; 36: System.IO.Compression.FileSystem => 0x24154ecb => 120
	i32 610194910, ; 37: System.Reactive.dll => 0x245ed5de => 51
	i32 627609679, ; 38: Xamarin.AndroidX.CustomView => 0x2568904f => 73
	i32 630587553, ; 39: SkiaSharp.Extended.Svg.dll => 0x259600a1 => 37
	i32 646990296, ; 40: Google.Cloud.Firestore.V1.dll => 0x269049d8 => 17
	i32 663517072, ; 41: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 105
	i32 666292255, ; 42: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 61
	i32 690569205, ; 43: System.Xml.Linq.dll => 0x29293ff5 => 55
	i32 775507847, ; 44: System.IO.Compression => 0x2e394f87 => 119
	i32 809851609, ; 45: System.Drawing.Common.dll => 0x30455ad9 => 4
	i32 843511501, ; 46: Xamarin.AndroidX.Print => 0x3246f6cd => 96
	i32 928116545, ; 47: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 115
	i32 955402788, ; 48: Newtonsoft.Json => 0x38f24a24 => 32
	i32 967690846, ; 49: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 82
	i32 974778368, ; 50: FormsViewGroup.dll => 0x3a19f000 => 9
	i32 992768348, ; 51: System.Collections.dll => 0x3b2c715c => 128
	i32 1012816738, ; 52: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 98
	i32 1028951442, ; 53: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 28
	i32 1035644815, ; 54: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 60
	i32 1042160112, ; 55: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 112
	i32 1049751285, ; 56: Google.Api.CommonProtos.dll => 0x3e91eef5 => 10
	i32 1052210849, ; 57: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 86
	i32 1098259244, ; 58: System => 0x41761b2c => 45
	i32 1145085672, ; 59: System.Linq.Async.dll => 0x44409ee8 => 46
	i32 1175144683, ; 60: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 103
	i32 1178241025, ; 61: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 93
	i32 1203173028, ; 62: Grpc.Net.Client => 0x47b6f6a4 => 23
	i32 1204270330, ; 63: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 61
	i32 1267360935, ; 64: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 104
	i32 1293217323, ; 65: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 75
	i32 1324164729, ; 66: System.Linq => 0x4eed2679 => 129
	i32 1365406463, ; 67: System.ServiceModel.Internals.dll => 0x516272ff => 123
	i32 1376866003, ; 68: Xamarin.AndroidX.SavedState => 0x52114ed3 => 98
	i32 1395857551, ; 69: Xamarin.AndroidX.Media.dll => 0x5333188f => 90
	i32 1406073936, ; 70: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 70
	i32 1411638395, ; 71: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 52
	i32 1437713837, ; 72: Grpc.Auth => 0x55b1c5ad => 21
	i32 1460219004, ; 73: Xamarin.Forms.Xaml => 0x57092c7c => 113
	i32 1461234159, ; 74: System.Collections.Immutable.dll => 0x5718a9ef => 42
	i32 1462112819, ; 75: System.IO.Compression.dll => 0x57261233 => 119
	i32 1469204771, ; 76: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 59
	i32 1479771757, ; 77: System.Collections.Immutable => 0x5833866d => 42
	i32 1550322496, ; 78: System.Reflection.Extensions.dll => 0x5c680b40 => 3
	i32 1582372066, ; 79: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 74
	i32 1592978981, ; 80: System.Runtime.Serialization.dll => 0x5ef2ee25 => 6
	i32 1622152042, ; 81: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 88
	i32 1624863272, ; 82: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 107
	i32 1636350590, ; 83: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 72
	i32 1639515021, ; 84: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 85: System.Runtime => 0x62c6282e => 53
	i32 1658241508, ; 86: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 101
	i32 1658251792, ; 87: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 114
	i32 1670060433, ; 88: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 69
	i32 1701541528, ; 89: System.Diagnostics.Debug.dll => 0x656b7698 => 124
	i32 1722051300, ; 90: SkiaSharp.Views.Forms => 0x66a46ae4 => 39
	i32 1724472758, ; 91: SkiaSharp.Extended => 0x66c95db6 => 36
	i32 1726116996, ; 92: System.Reflection.dll => 0x66e27484 => 125
	i32 1729485958, ; 93: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 65
	i32 1765942094, ; 94: System.Reflection.Extensions => 0x6942234e => 3
	i32 1766324549, ; 95: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 100
	i32 1774180710, ; 96: Proyecto.Android => 0x69bfd966 => 0
	i32 1776026572, ; 97: System.Core.dll => 0x69dc03cc => 43
	i32 1782161461, ; 98: Grpc.Core.Api => 0x6a39a035 => 22
	i32 1788241197, ; 99: Xamarin.AndroidX.Fragment => 0x6a96652d => 77
	i32 1796167890, ; 100: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 27
	i32 1808609942, ; 101: Xamarin.AndroidX.Loader => 0x6bcd3296 => 88
	i32 1813201214, ; 102: Xamarin.Google.Android.Material => 0x6c13413e => 114
	i32 1818569960, ; 103: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 94
	i32 1828688058, ; 104: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 29
	i32 1867746548, ; 105: Xamarin.Essentials.dll => 0x6f538cf4 => 108
	i32 1878053835, ; 106: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 113
	i32 1885316902, ; 107: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 62
	i32 1900519031, ; 108: Grpc.Auth.dll => 0x71479e77 => 21
	i32 1904755420, ; 109: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 5
	i32 1919157823, ; 110: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 91
	i32 1927897671, ; 111: System.CodeDom.dll => 0x72e96247 => 41
	i32 2011961780, ; 112: System.Buffers.dll => 0x77ec19b4 => 40
	i32 2019465201, ; 113: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 86
	i32 2055257422, ; 114: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 83
	i32 2079903147, ; 115: System.Runtime.dll => 0x7bf8cdab => 53
	i32 2090596640, ; 116: System.Numerics.Vectors => 0x7c9bf920 => 50
	i32 2097448633, ; 117: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 79
	i32 2113902067, ; 118: Xamarin.Forms.PancakeView.dll => 0x7dff95f3 => 110
	i32 2126786730, ; 119: Xamarin.Forms.Platform.Android => 0x7ec430aa => 111
	i32 2178612968, ; 120: System.CodeDom => 0x81dafee8 => 41
	i32 2192057212, ; 121: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 29
	i32 2201231467, ; 122: System.Net.Http => 0x8334206b => 2
	i32 2216717168, ; 123: Firebase.Auth.dll => 0x84206b70 => 7
	i32 2217644978, ; 124: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 103
	i32 2244775296, ; 125: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 89
	i32 2256548716, ; 126: Xamarin.AndroidX.MultiDex => 0x8680336c => 91
	i32 2261435625, ; 127: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 81
	i32 2279755925, ; 128: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 97
	i32 2315684594, ; 129: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 57
	i32 2397082276, ; 130: Xamarin.Forms.PancakeView => 0x8ee092a4 => 110
	i32 2397347608, ; 131: Google.LongRunning.dll => 0x8ee49f18 => 19
	i32 2409053734, ; 132: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 95
	i32 2441199521, ; 133: Google.Cloud.Firestore => 0x9181bfa1 => 16
	i32 2454642406, ; 134: System.Text.Encoding.dll => 0x924edee6 => 131
	i32 2458170485, ; 135: Proyecto => 0x9284b475 => 34
	i32 2465532216, ; 136: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 68
	i32 2471841756, ; 137: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 138: Java.Interop.dll => 0x93918882 => 25
	i32 2486847491, ; 139: Google.Api.Gax => 0x943a4803 => 11
	i32 2501346920, ; 140: System.Data.DataSetExtensions => 0x95178668 => 118
	i32 2505896520, ; 141: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 85
	i32 2526044369, ; 142: Proyecto.Android.dll => 0x969060d1 => 0
	i32 2581819634, ; 143: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 104
	i32 2620871830, ; 144: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 72
	i32 2624644809, ; 145: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 76
	i32 2633051222, ; 146: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 84
	i32 2635732976, ; 147: Google.Cloud.Firestore.dll => 0x9d1a17f0 => 16
	i32 2701096212, ; 148: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 101
	i32 2715334215, ; 149: System.Threading.Tasks.dll => 0xa1d8b647 => 126
	i32 2732626843, ; 150: Xamarin.AndroidX.Activity => 0xa2e0939b => 56
	i32 2737747696, ; 151: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 59
	i32 2744327253, ; 152: Google.Api.Gax.Grpc.dll => 0xa3931c55 => 12
	i32 2757554483, ; 153: Google.Api.Gax.Grpc => 0xa45cf133 => 12
	i32 2766581644, ; 154: Xamarin.Forms.Core => 0xa4e6af8c => 109
	i32 2768457651, ; 155: PropertyChanged => 0xa5034fb3 => 33
	i32 2778768386, ; 156: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 106
	i32 2795602088, ; 157: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 38
	i32 2810250172, ; 158: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 70
	i32 2818335264, ; 159: System.Linq.Async => 0xa7fc6220 => 46
	i32 2819470561, ; 160: System.Xml.dll => 0xa80db4e1 => 54
	i32 2839679515, ; 161: Google.LongRunning => 0xa942121b => 19
	i32 2853208004, ; 162: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 106
	i32 2854551965, ; 163: SkiaSharp.Extended.Svg => 0xaa25019d => 37
	i32 2855708567, ; 164: Xamarin.AndroidX.Transition => 0xaa36a797 => 102
	i32 2893550578, ; 165: Google.Apis.Core => 0xac7813f2 => 14
	i32 2898407901, ; 166: System.Management => 0xacc231dd => 47
	i32 2901442782, ; 167: System.Reflection => 0xacf080de => 125
	i32 2903344695, ; 168: System.ComponentModel.Composition => 0xad0d8637 => 121
	i32 2905242038, ; 169: mscorlib.dll => 0xad2a79b6 => 31
	i32 2912489636, ; 170: SkiaSharp.Views.Android => 0xad9910a4 => 38
	i32 2912646636, ; 171: Google.Api.CommonProtos => 0xad9b75ec => 10
	i32 2916838712, ; 172: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 107
	i32 2919462931, ; 173: System.Numerics.Vectors.dll => 0xae037813 => 50
	i32 2921128767, ; 174: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 58
	i32 2974793899, ; 175: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 39
	i32 2978675010, ; 176: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 75
	i32 2990604888, ; 177: Google.Apis => 0xb2410258 => 15
	i32 3024354802, ; 178: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 80
	i32 3044182254, ; 179: FormsViewGroup => 0xb57288ee => 9
	i32 3057625584, ; 180: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 92
	i32 3075834255, ; 181: System.Threading.Tasks => 0xb755818f => 126
	i32 3106263381, ; 182: Grpc.Net.Common.dll => 0xb925d155 => 24
	i32 3111772706, ; 183: System.Runtime.Serialization => 0xb979e222 => 6
	i32 3124832203, ; 184: System.Threading.Tasks.Extensions => 0xba4127cb => 132
	i32 3203277885, ; 185: Google.Api.Gax.dll => 0xbeee243d => 11
	i32 3204380047, ; 186: System.Data.dll => 0xbefef58f => 116
	i32 3211777861, ; 187: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 74
	i32 3220365878, ; 188: System.Threading => 0xbff2e236 => 130
	i32 3247949154, ; 189: Mono.Security => 0xc197c562 => 133
	i32 3258312781, ; 190: Xamarin.AndroidX.CardView => 0xc235e84d => 65
	i32 3265893370, ; 191: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 132
	i32 3267021929, ; 192: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 63
	i32 3299363146, ; 193: System.Text.Encoding => 0xc4a8494a => 131
	i32 3317135071, ; 194: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 73
	i32 3317144872, ; 195: System.Data => 0xc5b79d28 => 116
	i32 3322403133, ; 196: Firebase.dll => 0xc607d93d => 8
	i32 3340387945, ; 197: SkiaSharp => 0xc71a4669 => 35
	i32 3340431453, ; 198: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 62
	i32 3346324047, ; 199: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 93
	i32 3353484488, ; 200: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 79
	i32 3362522851, ; 201: Xamarin.AndroidX.Core => 0xc86c06e3 => 71
	i32 3366347497, ; 202: Java.Interop => 0xc8a662e9 => 25
	i32 3374999561, ; 203: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 97
	i32 3395150330, ; 204: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 52
	i32 3404865022, ; 205: System.ServiceModel.Internals => 0xcaf21dfe => 123
	i32 3429136800, ; 206: System.Xml => 0xcc6479a0 => 54
	i32 3430777524, ; 207: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 208: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 76
	i32 3453592554, ; 209: Google.Apis.Core.dll => 0xcdd9a3ea => 14
	i32 3476120550, ; 210: Mono.Android => 0xcf3163e6 => 30
	i32 3486566296, ; 211: System.Transactions => 0xcfd0c798 => 117
	i32 3493954962, ; 212: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 67
	i32 3499097210, ; 213: Google.Protobuf.dll => 0xd08ffc7a => 20
	i32 3501239056, ; 214: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 63
	i32 3509114376, ; 215: System.Xml.Linq => 0xd128d608 => 55
	i32 3536029504, ; 216: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 111
	i32 3567349600, ; 217: System.ComponentModel.Composition.dll => 0xd4a16f60 => 121
	i32 3596207933, ; 218: LiteDB.dll => 0xd659c73d => 26
	i32 3598063517, ; 219: Google.Cloud.Firestore.V1 => 0xd676179d => 17
	i32 3608519521, ; 220: System.Linq.dll => 0xd715a361 => 129
	i32 3612435020, ; 221: System.Management.dll => 0xd751624c => 47
	i32 3618140916, ; 222: Xamarin.AndroidX.Preference => 0xd7a872f4 => 95
	i32 3627220390, ; 223: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 96
	i32 3629588173, ; 224: LiteDB => 0xd8571ecd => 26
	i32 3632359727, ; 225: Xamarin.Forms.Platform => 0xd881692f => 112
	i32 3633644679, ; 226: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 58
	i32 3641597786, ; 227: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 83
	i32 3645630983, ; 228: Google.Protobuf => 0xd94bea07 => 20
	i32 3672681054, ; 229: Mono.Android.dll => 0xdae8aa5e => 30
	i32 3676310014, ; 230: System.Web.Services.dll => 0xdb2009fe => 122
	i32 3682565725, ; 231: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 64
	i32 3684561358, ; 232: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 67
	i32 3684933406, ; 233: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 5
	i32 3689375977, ; 234: System.Drawing.Common => 0xdbe768e9 => 4
	i32 3718780102, ; 235: Xamarin.AndroidX.Annotation => 0xdda814c6 => 57
	i32 3724971120, ; 236: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 92
	i32 3731644420, ; 237: System.Reactive => 0xde6c6004 => 51
	i32 3748608112, ; 238: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 44
	i32 3757995660, ; 239: Google.Cloud.Location.dll => 0xdffe768c => 18
	i32 3758932259, ; 240: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 81
	i32 3786282454, ; 241: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 66
	i32 3793997468, ; 242: Google.Apis.Auth.dll => 0xe223ce9c => 13
	i32 3822602673, ; 243: Xamarin.AndroidX.Media => 0xe3d849b1 => 90
	i32 3829621856, ; 244: System.Numerics.dll => 0xe4436460 => 49
	i32 3841636137, ; 245: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 28
	i32 3885922214, ; 246: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 102
	i32 3896760992, ; 247: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 71
	i32 3920810846, ; 248: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 120
	i32 3921031405, ; 249: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 105
	i32 3931092270, ; 250: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 94
	i32 3945713374, ; 251: System.Data.DataSetExtensions.dll => 0xeb2ecede => 118
	i32 3946669811, ; 252: Proyecto.dll => 0xeb3d66f3 => 34
	i32 3955647286, ; 253: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 60
	i32 4024013275, ; 254: Firebase.Auth => 0xefd991db => 7
	i32 4025784931, ; 255: System.Memory => 0xeff49a63 => 48
	i32 4056144661, ; 256: Google.Cloud.Location => 0xf1c3db15 => 18
	i32 4059682726, ; 257: Google.Apis.dll => 0xf1f9d7a6 => 15
	i32 4073602200, ; 258: System.Threading.dll => 0xf2ce3c98 => 130
	i32 4082882467, ; 259: Google.Apis.Auth => 0xf35bd7a3 => 13
	i32 4105002889, ; 260: Mono.Security.dll => 0xf4ad5f89 => 133
	i32 4151237749, ; 261: System.Core => 0xf76edc75 => 43
	i32 4181436372, ; 262: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 127
	i32 4182413190, ; 263: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 87
	i32 4184000013, ; 264: PropertyChanged.dll => 0xf962c60d => 33
	i32 4213026141, ; 265: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 44
	i32 4260525087, ; 266: System.Buffers => 0xfdf2741f => 40
	i32 4292120959 ; 267: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 87
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [268 x i32] [
	i32 85, i32 115, i32 32, i32 109, i32 99, i32 99, i32 66, i32 100, ; 0..7
	i32 64, i32 124, i32 80, i32 122, i32 69, i32 84, i32 78, i32 56, ; 8..15
	i32 49, i32 82, i32 24, i32 22, i32 36, i32 48, i32 23, i32 8, ; 16..23
	i32 68, i32 108, i32 128, i32 77, i32 127, i32 31, i32 45, i32 78, ; 24..31
	i32 89, i32 35, i32 117, i32 27, i32 120, i32 51, i32 73, i32 37, ; 32..39
	i32 17, i32 105, i32 61, i32 55, i32 119, i32 4, i32 96, i32 115, ; 40..47
	i32 32, i32 82, i32 9, i32 128, i32 98, i32 28, i32 60, i32 112, ; 48..55
	i32 10, i32 86, i32 45, i32 46, i32 103, i32 93, i32 23, i32 61, ; 56..63
	i32 104, i32 75, i32 129, i32 123, i32 98, i32 90, i32 70, i32 52, ; 64..71
	i32 21, i32 113, i32 42, i32 119, i32 59, i32 42, i32 3, i32 74, ; 72..79
	i32 6, i32 88, i32 107, i32 72, i32 2, i32 53, i32 101, i32 114, ; 80..87
	i32 69, i32 124, i32 39, i32 36, i32 125, i32 65, i32 3, i32 100, ; 88..95
	i32 0, i32 43, i32 22, i32 77, i32 27, i32 88, i32 114, i32 94, ; 96..103
	i32 29, i32 108, i32 113, i32 62, i32 21, i32 5, i32 91, i32 41, ; 104..111
	i32 40, i32 86, i32 83, i32 53, i32 50, i32 79, i32 110, i32 111, ; 112..119
	i32 41, i32 29, i32 2, i32 7, i32 103, i32 89, i32 91, i32 81, ; 120..127
	i32 97, i32 57, i32 110, i32 19, i32 95, i32 16, i32 131, i32 34, ; 128..135
	i32 68, i32 1, i32 25, i32 11, i32 118, i32 85, i32 0, i32 104, ; 136..143
	i32 72, i32 76, i32 84, i32 16, i32 101, i32 126, i32 56, i32 59, ; 144..151
	i32 12, i32 12, i32 109, i32 33, i32 106, i32 38, i32 70, i32 46, ; 152..159
	i32 54, i32 19, i32 106, i32 37, i32 102, i32 14, i32 47, i32 125, ; 160..167
	i32 121, i32 31, i32 38, i32 10, i32 107, i32 50, i32 58, i32 39, ; 168..175
	i32 75, i32 15, i32 80, i32 9, i32 92, i32 126, i32 24, i32 6, ; 176..183
	i32 132, i32 11, i32 116, i32 74, i32 130, i32 133, i32 65, i32 132, ; 184..191
	i32 63, i32 131, i32 73, i32 116, i32 8, i32 35, i32 62, i32 93, ; 192..199
	i32 79, i32 71, i32 25, i32 97, i32 52, i32 123, i32 54, i32 1, ; 200..207
	i32 76, i32 14, i32 30, i32 117, i32 67, i32 20, i32 63, i32 55, ; 208..215
	i32 111, i32 121, i32 26, i32 17, i32 129, i32 47, i32 95, i32 96, ; 216..223
	i32 26, i32 112, i32 58, i32 83, i32 20, i32 30, i32 122, i32 64, ; 224..231
	i32 67, i32 5, i32 4, i32 57, i32 92, i32 51, i32 44, i32 18, ; 232..239
	i32 81, i32 66, i32 13, i32 90, i32 49, i32 28, i32 102, i32 71, ; 240..247
	i32 120, i32 105, i32 94, i32 118, i32 34, i32 60, i32 7, i32 48, ; 248..255
	i32 18, i32 15, i32 130, i32 13, i32 133, i32 43, i32 127, i32 87, ; 256..263
	i32 33, i32 44, i32 40, i32 87 ; 264..267
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
