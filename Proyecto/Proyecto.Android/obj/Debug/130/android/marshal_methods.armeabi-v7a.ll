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
@assembly_image_cache_hashes = local_unnamed_addr constant [254 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 79
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 108
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 30
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 103
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 93
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 93
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 60
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 94
	i32 209399409, ; 8: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 58
	i32 220171995, ; 9: System.Diagnostics.Debug => 0xd1f8edb => 117
	i32 230216969, ; 10: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 74
	i32 232815796, ; 11: System.Web.Services => 0xde07cb4 => 115
	i32 261689757, ; 12: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 63
	i32 278686392, ; 13: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 78
	i32 280482487, ; 14: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 72
	i32 318968648, ; 15: Xamarin.AndroidX.Activity.dll => 0x13031348 => 50
	i32 321597661, ; 16: System.Numerics => 0x132b30dd => 43
	i32 342366114, ; 17: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 76
	i32 364956269, ; 18: Grpc.Net.Common => 0x15c0ca6d => 22
	i32 371306672, ; 19: Grpc.Core.Api.dll => 0x1621b0b0 => 20
	i32 385762202, ; 20: System.Memory.dll => 0x16fe439a => 41
	i32 391886110, ; 21: Grpc.Net.Client.dll => 0x175bb51e => 21
	i32 393699800, ; 22: Firebase => 0x177761d8 => 6
	i32 441335492, ; 23: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 62
	i32 442521989, ; 24: Xamarin.Essentials => 0x1a605985 => 102
	i32 442565967, ; 25: System.Collections => 0x1a61054f => 121
	i32 450948140, ; 26: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 71
	i32 459347974, ; 27: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 120
	i32 465846621, ; 28: mscorlib => 0x1bc4415d => 29
	i32 469710990, ; 29: System.dll => 0x1bff388e => 37
	i32 476646585, ; 30: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 72
	i32 486930444, ; 31: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 83
	i32 526420162, ; 32: System.Transactions.dll => 0x1f6088c2 => 110
	i32 548916678, ; 33: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 25
	i32 605376203, ; 34: System.IO.Compression.FileSystem => 0x24154ecb => 113
	i32 610194910, ; 35: System.Reactive.dll => 0x245ed5de => 45
	i32 627609679, ; 36: Xamarin.AndroidX.CustomView => 0x2568904f => 67
	i32 646990296, ; 37: Google.Cloud.Firestore.V1.dll => 0x269049d8 => 15
	i32 663517072, ; 38: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 99
	i32 666292255, ; 39: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 55
	i32 690569205, ; 40: System.Xml.Linq.dll => 0x29293ff5 => 49
	i32 775507847, ; 41: System.IO.Compression => 0x2e394f87 => 38
	i32 809851609, ; 42: System.Drawing.Common.dll => 0x30455ad9 => 112
	i32 843511501, ; 43: Xamarin.AndroidX.Print => 0x3246f6cd => 90
	i32 928116545, ; 44: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 108
	i32 955402788, ; 45: Newtonsoft.Json => 0x38f24a24 => 30
	i32 967690846, ; 46: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 76
	i32 974778368, ; 47: FormsViewGroup.dll => 0x3a19f000 => 7
	i32 992768348, ; 48: System.Collections.dll => 0x3b2c715c => 121
	i32 1012816738, ; 49: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 92
	i32 1028951442, ; 50: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 26
	i32 1035644815, ; 51: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 54
	i32 1042160112, ; 52: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 105
	i32 1049751285, ; 53: Google.Api.CommonProtos.dll => 0x3e91eef5 => 8
	i32 1052210849, ; 54: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 80
	i32 1098259244, ; 55: System => 0x41761b2c => 37
	i32 1145085672, ; 56: System.Linq.Async.dll => 0x44409ee8 => 39
	i32 1175144683, ; 57: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 97
	i32 1178241025, ; 58: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 87
	i32 1203173028, ; 59: Grpc.Net.Client => 0x47b6f6a4 => 21
	i32 1204270330, ; 60: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 55
	i32 1267360935, ; 61: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 98
	i32 1293217323, ; 62: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 69
	i32 1324164729, ; 63: System.Linq => 0x4eed2679 => 122
	i32 1365406463, ; 64: System.ServiceModel.Internals.dll => 0x516272ff => 116
	i32 1376866003, ; 65: Xamarin.AndroidX.SavedState => 0x52114ed3 => 92
	i32 1395857551, ; 66: Xamarin.AndroidX.Media.dll => 0x5333188f => 84
	i32 1406073936, ; 67: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 64
	i32 1411638395, ; 68: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 46
	i32 1437713837, ; 69: Grpc.Auth => 0x55b1c5ad => 19
	i32 1460219004, ; 70: Xamarin.Forms.Xaml => 0x57092c7c => 106
	i32 1461234159, ; 71: System.Collections.Immutable.dll => 0x5718a9ef => 34
	i32 1462112819, ; 72: System.IO.Compression.dll => 0x57261233 => 38
	i32 1469204771, ; 73: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 53
	i32 1479771757, ; 74: System.Collections.Immutable => 0x5833866d => 34
	i32 1550322496, ; 75: System.Reflection.Extensions.dll => 0x5c680b40 => 2
	i32 1582372066, ; 76: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 68
	i32 1592978981, ; 77: System.Runtime.Serialization.dll => 0x5ef2ee25 => 4
	i32 1622152042, ; 78: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 82
	i32 1624863272, ; 79: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 101
	i32 1636350590, ; 80: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 66
	i32 1639515021, ; 81: System.Net.Http.dll => 0x61b9038d => 42
	i32 1657153582, ; 82: System.Runtime => 0x62c6282e => 47
	i32 1658241508, ; 83: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 95
	i32 1658251792, ; 84: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 107
	i32 1670060433, ; 85: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 63
	i32 1701541528, ; 86: System.Diagnostics.Debug.dll => 0x656b7698 => 117
	i32 1726116996, ; 87: System.Reflection.dll => 0x66e27484 => 118
	i32 1729485958, ; 88: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 59
	i32 1765942094, ; 89: System.Reflection.Extensions => 0x6942234e => 2
	i32 1766324549, ; 90: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 94
	i32 1774180710, ; 91: Proyecto.Android => 0x69bfd966 => 0
	i32 1776026572, ; 92: System.Core.dll => 0x69dc03cc => 35
	i32 1782161461, ; 93: Grpc.Core.Api => 0x6a39a035 => 20
	i32 1788241197, ; 94: Xamarin.AndroidX.Fragment => 0x6a96652d => 71
	i32 1796167890, ; 95: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 25
	i32 1808609942, ; 96: Xamarin.AndroidX.Loader => 0x6bcd3296 => 82
	i32 1813201214, ; 97: Xamarin.Google.Android.Material => 0x6c13413e => 107
	i32 1818569960, ; 98: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 88
	i32 1828688058, ; 99: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 27
	i32 1867746548, ; 100: Xamarin.Essentials.dll => 0x6f538cf4 => 102
	i32 1878053835, ; 101: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 106
	i32 1885316902, ; 102: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 56
	i32 1900519031, ; 103: Grpc.Auth.dll => 0x71479e77 => 19
	i32 1904755420, ; 104: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 3
	i32 1919157823, ; 105: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 85
	i32 1927897671, ; 106: System.CodeDom.dll => 0x72e96247 => 33
	i32 2011961780, ; 107: System.Buffers.dll => 0x77ec19b4 => 32
	i32 2019465201, ; 108: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 80
	i32 2055257422, ; 109: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 77
	i32 2079903147, ; 110: System.Runtime.dll => 0x7bf8cdab => 47
	i32 2090596640, ; 111: System.Numerics.Vectors => 0x7c9bf920 => 44
	i32 2097448633, ; 112: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 73
	i32 2126786730, ; 113: Xamarin.Forms.Platform.Android => 0x7ec430aa => 104
	i32 2178612968, ; 114: System.CodeDom => 0x81dafee8 => 33
	i32 2192057212, ; 115: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 27
	i32 2201231467, ; 116: System.Net.Http => 0x8334206b => 42
	i32 2216717168, ; 117: Firebase.Auth.dll => 0x84206b70 => 5
	i32 2217644978, ; 118: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 97
	i32 2244775296, ; 119: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 83
	i32 2256548716, ; 120: Xamarin.AndroidX.MultiDex => 0x8680336c => 85
	i32 2261435625, ; 121: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 75
	i32 2279755925, ; 122: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 91
	i32 2315684594, ; 123: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 51
	i32 2397347608, ; 124: Google.LongRunning.dll => 0x8ee49f18 => 17
	i32 2409053734, ; 125: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 89
	i32 2441199521, ; 126: Google.Cloud.Firestore => 0x9181bfa1 => 14
	i32 2454642406, ; 127: System.Text.Encoding.dll => 0x924edee6 => 124
	i32 2458170485, ; 128: Proyecto => 0x9284b475 => 31
	i32 2465532216, ; 129: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 62
	i32 2471841756, ; 130: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 131: Java.Interop.dll => 0x93918882 => 23
	i32 2486847491, ; 132: Google.Api.Gax => 0x943a4803 => 9
	i32 2501346920, ; 133: System.Data.DataSetExtensions => 0x95178668 => 111
	i32 2505896520, ; 134: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 79
	i32 2526044369, ; 135: Proyecto.Android.dll => 0x969060d1 => 0
	i32 2581819634, ; 136: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 98
	i32 2620871830, ; 137: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 66
	i32 2624644809, ; 138: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 70
	i32 2633051222, ; 139: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 78
	i32 2635732976, ; 140: Google.Cloud.Firestore.dll => 0x9d1a17f0 => 14
	i32 2701096212, ; 141: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 95
	i32 2715334215, ; 142: System.Threading.Tasks.dll => 0xa1d8b647 => 119
	i32 2732626843, ; 143: Xamarin.AndroidX.Activity => 0xa2e0939b => 50
	i32 2737747696, ; 144: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 53
	i32 2744327253, ; 145: Google.Api.Gax.Grpc.dll => 0xa3931c55 => 10
	i32 2757554483, ; 146: Google.Api.Gax.Grpc => 0xa45cf133 => 10
	i32 2766581644, ; 147: Xamarin.Forms.Core => 0xa4e6af8c => 103
	i32 2778768386, ; 148: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 100
	i32 2810250172, ; 149: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 64
	i32 2818335264, ; 150: System.Linq.Async => 0xa7fc6220 => 39
	i32 2819470561, ; 151: System.Xml.dll => 0xa80db4e1 => 48
	i32 2839679515, ; 152: Google.LongRunning => 0xa942121b => 17
	i32 2853208004, ; 153: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 100
	i32 2855708567, ; 154: Xamarin.AndroidX.Transition => 0xaa36a797 => 96
	i32 2893550578, ; 155: Google.Apis.Core => 0xac7813f2 => 12
	i32 2898407901, ; 156: System.Management => 0xacc231dd => 40
	i32 2901442782, ; 157: System.Reflection => 0xacf080de => 118
	i32 2903344695, ; 158: System.ComponentModel.Composition => 0xad0d8637 => 114
	i32 2905242038, ; 159: mscorlib.dll => 0xad2a79b6 => 29
	i32 2912646636, ; 160: Google.Api.CommonProtos => 0xad9b75ec => 8
	i32 2916838712, ; 161: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 101
	i32 2919462931, ; 162: System.Numerics.Vectors.dll => 0xae037813 => 44
	i32 2921128767, ; 163: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 52
	i32 2978675010, ; 164: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 69
	i32 2990604888, ; 165: Google.Apis => 0xb2410258 => 13
	i32 3024354802, ; 166: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 74
	i32 3044182254, ; 167: FormsViewGroup => 0xb57288ee => 7
	i32 3057625584, ; 168: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 86
	i32 3075834255, ; 169: System.Threading.Tasks => 0xb755818f => 119
	i32 3106263381, ; 170: Grpc.Net.Common.dll => 0xb925d155 => 22
	i32 3111772706, ; 171: System.Runtime.Serialization => 0xb979e222 => 4
	i32 3124832203, ; 172: System.Threading.Tasks.Extensions => 0xba4127cb => 125
	i32 3203277885, ; 173: Google.Api.Gax.dll => 0xbeee243d => 9
	i32 3204380047, ; 174: System.Data.dll => 0xbefef58f => 109
	i32 3211777861, ; 175: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 68
	i32 3220365878, ; 176: System.Threading => 0xbff2e236 => 123
	i32 3247949154, ; 177: Mono.Security => 0xc197c562 => 126
	i32 3258312781, ; 178: Xamarin.AndroidX.CardView => 0xc235e84d => 59
	i32 3265893370, ; 179: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 125
	i32 3267021929, ; 180: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 57
	i32 3299363146, ; 181: System.Text.Encoding => 0xc4a8494a => 124
	i32 3317135071, ; 182: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 67
	i32 3317144872, ; 183: System.Data => 0xc5b79d28 => 109
	i32 3322403133, ; 184: Firebase.dll => 0xc607d93d => 6
	i32 3340431453, ; 185: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 56
	i32 3346324047, ; 186: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 87
	i32 3353484488, ; 187: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 73
	i32 3362522851, ; 188: Xamarin.AndroidX.Core => 0xc86c06e3 => 65
	i32 3366347497, ; 189: Java.Interop => 0xc8a662e9 => 23
	i32 3374999561, ; 190: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 91
	i32 3395150330, ; 191: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 46
	i32 3404865022, ; 192: System.ServiceModel.Internals => 0xcaf21dfe => 116
	i32 3429136800, ; 193: System.Xml => 0xcc6479a0 => 48
	i32 3430777524, ; 194: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 195: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 70
	i32 3453592554, ; 196: Google.Apis.Core.dll => 0xcdd9a3ea => 12
	i32 3476120550, ; 197: Mono.Android => 0xcf3163e6 => 28
	i32 3486566296, ; 198: System.Transactions => 0xcfd0c798 => 110
	i32 3493954962, ; 199: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 61
	i32 3499097210, ; 200: Google.Protobuf.dll => 0xd08ffc7a => 18
	i32 3501239056, ; 201: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 57
	i32 3509114376, ; 202: System.Xml.Linq => 0xd128d608 => 49
	i32 3536029504, ; 203: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 104
	i32 3567349600, ; 204: System.ComponentModel.Composition.dll => 0xd4a16f60 => 114
	i32 3596207933, ; 205: LiteDB.dll => 0xd659c73d => 24
	i32 3598063517, ; 206: Google.Cloud.Firestore.V1 => 0xd676179d => 15
	i32 3608519521, ; 207: System.Linq.dll => 0xd715a361 => 122
	i32 3612435020, ; 208: System.Management.dll => 0xd751624c => 40
	i32 3618140916, ; 209: Xamarin.AndroidX.Preference => 0xd7a872f4 => 89
	i32 3627220390, ; 210: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 90
	i32 3629588173, ; 211: LiteDB => 0xd8571ecd => 24
	i32 3632359727, ; 212: Xamarin.Forms.Platform => 0xd881692f => 105
	i32 3633644679, ; 213: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 52
	i32 3641597786, ; 214: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 77
	i32 3645630983, ; 215: Google.Protobuf => 0xd94bea07 => 18
	i32 3672681054, ; 216: Mono.Android.dll => 0xdae8aa5e => 28
	i32 3676310014, ; 217: System.Web.Services.dll => 0xdb2009fe => 115
	i32 3682565725, ; 218: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 58
	i32 3684561358, ; 219: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 61
	i32 3684933406, ; 220: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 3
	i32 3689375977, ; 221: System.Drawing.Common => 0xdbe768e9 => 112
	i32 3718780102, ; 222: Xamarin.AndroidX.Annotation => 0xdda814c6 => 51
	i32 3724971120, ; 223: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 86
	i32 3731644420, ; 224: System.Reactive => 0xde6c6004 => 45
	i32 3748608112, ; 225: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 36
	i32 3757995660, ; 226: Google.Cloud.Location.dll => 0xdffe768c => 16
	i32 3758932259, ; 227: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 75
	i32 3786282454, ; 228: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 60
	i32 3793997468, ; 229: Google.Apis.Auth.dll => 0xe223ce9c => 11
	i32 3822602673, ; 230: Xamarin.AndroidX.Media => 0xe3d849b1 => 84
	i32 3829621856, ; 231: System.Numerics.dll => 0xe4436460 => 43
	i32 3841636137, ; 232: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 26
	i32 3885922214, ; 233: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 96
	i32 3896760992, ; 234: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 65
	i32 3920810846, ; 235: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 113
	i32 3921031405, ; 236: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 99
	i32 3931092270, ; 237: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 88
	i32 3945713374, ; 238: System.Data.DataSetExtensions.dll => 0xeb2ecede => 111
	i32 3946669811, ; 239: Proyecto.dll => 0xeb3d66f3 => 31
	i32 3955647286, ; 240: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 54
	i32 4024013275, ; 241: Firebase.Auth => 0xefd991db => 5
	i32 4025784931, ; 242: System.Memory => 0xeff49a63 => 41
	i32 4056144661, ; 243: Google.Cloud.Location => 0xf1c3db15 => 16
	i32 4059682726, ; 244: Google.Apis.dll => 0xf1f9d7a6 => 13
	i32 4073602200, ; 245: System.Threading.dll => 0xf2ce3c98 => 123
	i32 4082882467, ; 246: Google.Apis.Auth => 0xf35bd7a3 => 11
	i32 4105002889, ; 247: Mono.Security.dll => 0xf4ad5f89 => 126
	i32 4151237749, ; 248: System.Core => 0xf76edc75 => 35
	i32 4181436372, ; 249: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 120
	i32 4182413190, ; 250: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 81
	i32 4213026141, ; 251: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 36
	i32 4260525087, ; 252: System.Buffers => 0xfdf2741f => 32
	i32 4292120959 ; 253: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 81
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [254 x i32] [
	i32 79, i32 108, i32 30, i32 103, i32 93, i32 93, i32 60, i32 94, ; 0..7
	i32 58, i32 117, i32 74, i32 115, i32 63, i32 78, i32 72, i32 50, ; 8..15
	i32 43, i32 76, i32 22, i32 20, i32 41, i32 21, i32 6, i32 62, ; 16..23
	i32 102, i32 121, i32 71, i32 120, i32 29, i32 37, i32 72, i32 83, ; 24..31
	i32 110, i32 25, i32 113, i32 45, i32 67, i32 15, i32 99, i32 55, ; 32..39
	i32 49, i32 38, i32 112, i32 90, i32 108, i32 30, i32 76, i32 7, ; 40..47
	i32 121, i32 92, i32 26, i32 54, i32 105, i32 8, i32 80, i32 37, ; 48..55
	i32 39, i32 97, i32 87, i32 21, i32 55, i32 98, i32 69, i32 122, ; 56..63
	i32 116, i32 92, i32 84, i32 64, i32 46, i32 19, i32 106, i32 34, ; 64..71
	i32 38, i32 53, i32 34, i32 2, i32 68, i32 4, i32 82, i32 101, ; 72..79
	i32 66, i32 42, i32 47, i32 95, i32 107, i32 63, i32 117, i32 118, ; 80..87
	i32 59, i32 2, i32 94, i32 0, i32 35, i32 20, i32 71, i32 25, ; 88..95
	i32 82, i32 107, i32 88, i32 27, i32 102, i32 106, i32 56, i32 19, ; 96..103
	i32 3, i32 85, i32 33, i32 32, i32 80, i32 77, i32 47, i32 44, ; 104..111
	i32 73, i32 104, i32 33, i32 27, i32 42, i32 5, i32 97, i32 83, ; 112..119
	i32 85, i32 75, i32 91, i32 51, i32 17, i32 89, i32 14, i32 124, ; 120..127
	i32 31, i32 62, i32 1, i32 23, i32 9, i32 111, i32 79, i32 0, ; 128..135
	i32 98, i32 66, i32 70, i32 78, i32 14, i32 95, i32 119, i32 50, ; 136..143
	i32 53, i32 10, i32 10, i32 103, i32 100, i32 64, i32 39, i32 48, ; 144..151
	i32 17, i32 100, i32 96, i32 12, i32 40, i32 118, i32 114, i32 29, ; 152..159
	i32 8, i32 101, i32 44, i32 52, i32 69, i32 13, i32 74, i32 7, ; 160..167
	i32 86, i32 119, i32 22, i32 4, i32 125, i32 9, i32 109, i32 68, ; 168..175
	i32 123, i32 126, i32 59, i32 125, i32 57, i32 124, i32 67, i32 109, ; 176..183
	i32 6, i32 56, i32 87, i32 73, i32 65, i32 23, i32 91, i32 46, ; 184..191
	i32 116, i32 48, i32 1, i32 70, i32 12, i32 28, i32 110, i32 61, ; 192..199
	i32 18, i32 57, i32 49, i32 104, i32 114, i32 24, i32 15, i32 122, ; 200..207
	i32 40, i32 89, i32 90, i32 24, i32 105, i32 52, i32 77, i32 18, ; 208..215
	i32 28, i32 115, i32 58, i32 61, i32 3, i32 112, i32 51, i32 86, ; 216..223
	i32 45, i32 36, i32 16, i32 75, i32 60, i32 11, i32 84, i32 43, ; 224..231
	i32 26, i32 96, i32 65, i32 113, i32 99, i32 88, i32 111, i32 31, ; 232..239
	i32 54, i32 5, i32 41, i32 16, i32 13, i32 123, i32 11, i32 126, ; 240..247
	i32 35, i32 120, i32 81, i32 36, i32 32, i32 81 ; 248..253
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
