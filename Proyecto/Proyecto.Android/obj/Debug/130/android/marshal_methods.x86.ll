; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [246 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 75
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 104
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 27
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 99
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 89
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 89
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 56
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 90
	i32 209399409, ; 8: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 54
	i32 220171995, ; 9: System.Diagnostics.Debug => 0xd1f8edb => 113
	i32 230216969, ; 10: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 70
	i32 232815796, ; 11: System.Web.Services => 0xde07cb4 => 111
	i32 261689757, ; 12: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 59
	i32 278686392, ; 13: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 74
	i32 280482487, ; 14: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 68
	i32 318968648, ; 15: Xamarin.AndroidX.Activity.dll => 0x13031348 => 46
	i32 321597661, ; 16: System.Numerics => 0x132b30dd => 40
	i32 342366114, ; 17: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 72
	i32 364956269, ; 18: Grpc.Net.Common => 0x15c0ca6d => 20
	i32 371306672, ; 19: Grpc.Core.Api.dll => 0x1621b0b0 => 18
	i32 385762202, ; 20: System.Memory.dll => 0x16fe439a => 38
	i32 391886110, ; 21: Grpc.Net.Client.dll => 0x175bb51e => 19
	i32 441335492, ; 22: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 58
	i32 442521989, ; 23: Xamarin.Essentials => 0x1a605985 => 98
	i32 442565967, ; 24: System.Collections => 0x1a61054f => 117
	i32 450948140, ; 25: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 67
	i32 459347974, ; 26: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 116
	i32 465846621, ; 27: mscorlib => 0x1bc4415d => 26
	i32 469710990, ; 28: System.dll => 0x1bff388e => 34
	i32 476646585, ; 29: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 68
	i32 486930444, ; 30: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 79
	i32 526420162, ; 31: System.Transactions.dll => 0x1f6088c2 => 106
	i32 548916678, ; 32: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 22
	i32 605376203, ; 33: System.IO.Compression.FileSystem => 0x24154ecb => 109
	i32 627609679, ; 34: Xamarin.AndroidX.CustomView => 0x2568904f => 63
	i32 646990296, ; 35: Google.Cloud.Firestore.V1.dll => 0x269049d8 => 13
	i32 663517072, ; 36: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 95
	i32 666292255, ; 37: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 51
	i32 690569205, ; 38: System.Xml.Linq.dll => 0x29293ff5 => 45
	i32 775507847, ; 39: System.IO.Compression => 0x2e394f87 => 35
	i32 809851609, ; 40: System.Drawing.Common.dll => 0x30455ad9 => 108
	i32 843511501, ; 41: Xamarin.AndroidX.Print => 0x3246f6cd => 86
	i32 928116545, ; 42: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 104
	i32 955402788, ; 43: Newtonsoft.Json => 0x38f24a24 => 27
	i32 967690846, ; 44: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 72
	i32 974778368, ; 45: FormsViewGroup.dll => 0x3a19f000 => 5
	i32 992768348, ; 46: System.Collections.dll => 0x3b2c715c => 117
	i32 1012816738, ; 47: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 88
	i32 1028951442, ; 48: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 23
	i32 1035644815, ; 49: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 50
	i32 1042160112, ; 50: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 101
	i32 1049751285, ; 51: Google.Api.CommonProtos.dll => 0x3e91eef5 => 6
	i32 1052210849, ; 52: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 76
	i32 1098259244, ; 53: System => 0x41761b2c => 34
	i32 1145085672, ; 54: System.Linq.Async.dll => 0x44409ee8 => 36
	i32 1175144683, ; 55: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 93
	i32 1178241025, ; 56: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 83
	i32 1203173028, ; 57: Grpc.Net.Client => 0x47b6f6a4 => 19
	i32 1204270330, ; 58: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 51
	i32 1267360935, ; 59: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 94
	i32 1293217323, ; 60: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 65
	i32 1324164729, ; 61: System.Linq => 0x4eed2679 => 118
	i32 1365406463, ; 62: System.ServiceModel.Internals.dll => 0x516272ff => 112
	i32 1376866003, ; 63: Xamarin.AndroidX.SavedState => 0x52114ed3 => 88
	i32 1395857551, ; 64: Xamarin.AndroidX.Media.dll => 0x5333188f => 80
	i32 1406073936, ; 65: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 60
	i32 1411638395, ; 66: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 42
	i32 1437713837, ; 67: Grpc.Auth => 0x55b1c5ad => 17
	i32 1460219004, ; 68: Xamarin.Forms.Xaml => 0x57092c7c => 102
	i32 1461234159, ; 69: System.Collections.Immutable.dll => 0x5718a9ef => 31
	i32 1462112819, ; 70: System.IO.Compression.dll => 0x57261233 => 35
	i32 1469204771, ; 71: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 49
	i32 1479771757, ; 72: System.Collections.Immutable => 0x5833866d => 31
	i32 1550322496, ; 73: System.Reflection.Extensions.dll => 0x5c680b40 => 2
	i32 1582372066, ; 74: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 64
	i32 1592978981, ; 75: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 76: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 78
	i32 1624863272, ; 77: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 97
	i32 1636350590, ; 78: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 62
	i32 1639515021, ; 79: System.Net.Http.dll => 0x61b9038d => 39
	i32 1657153582, ; 80: System.Runtime => 0x62c6282e => 43
	i32 1658241508, ; 81: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 91
	i32 1658251792, ; 82: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 103
	i32 1670060433, ; 83: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 59
	i32 1701541528, ; 84: System.Diagnostics.Debug.dll => 0x656b7698 => 113
	i32 1726116996, ; 85: System.Reflection.dll => 0x66e27484 => 114
	i32 1729485958, ; 86: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 55
	i32 1765942094, ; 87: System.Reflection.Extensions => 0x6942234e => 2
	i32 1766324549, ; 88: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 90
	i32 1774180710, ; 89: Proyecto.Android => 0x69bfd966 => 0
	i32 1776026572, ; 90: System.Core.dll => 0x69dc03cc => 32
	i32 1782161461, ; 91: Grpc.Core.Api => 0x6a39a035 => 18
	i32 1788241197, ; 92: Xamarin.AndroidX.Fragment => 0x6a96652d => 67
	i32 1796167890, ; 93: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 22
	i32 1808609942, ; 94: Xamarin.AndroidX.Loader => 0x6bcd3296 => 78
	i32 1813201214, ; 95: Xamarin.Google.Android.Material => 0x6c13413e => 103
	i32 1818569960, ; 96: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 84
	i32 1828688058, ; 97: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 24
	i32 1867746548, ; 98: Xamarin.Essentials.dll => 0x6f538cf4 => 98
	i32 1878053835, ; 99: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 102
	i32 1885316902, ; 100: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 52
	i32 1900519031, ; 101: Grpc.Auth.dll => 0x71479e77 => 17
	i32 1919157823, ; 102: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 81
	i32 1927897671, ; 103: System.CodeDom.dll => 0x72e96247 => 30
	i32 2011961780, ; 104: System.Buffers.dll => 0x77ec19b4 => 29
	i32 2019465201, ; 105: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 76
	i32 2055257422, ; 106: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 73
	i32 2079903147, ; 107: System.Runtime.dll => 0x7bf8cdab => 43
	i32 2090596640, ; 108: System.Numerics.Vectors => 0x7c9bf920 => 41
	i32 2097448633, ; 109: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 69
	i32 2126786730, ; 110: Xamarin.Forms.Platform.Android => 0x7ec430aa => 100
	i32 2178612968, ; 111: System.CodeDom => 0x81dafee8 => 30
	i32 2192057212, ; 112: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 24
	i32 2201231467, ; 113: System.Net.Http => 0x8334206b => 39
	i32 2216717168, ; 114: Firebase.Auth.dll => 0x84206b70 => 4
	i32 2217644978, ; 115: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 93
	i32 2244775296, ; 116: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 79
	i32 2256548716, ; 117: Xamarin.AndroidX.MultiDex => 0x8680336c => 81
	i32 2261435625, ; 118: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 71
	i32 2279755925, ; 119: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 87
	i32 2315684594, ; 120: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 47
	i32 2397347608, ; 121: Google.LongRunning.dll => 0x8ee49f18 => 15
	i32 2409053734, ; 122: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 85
	i32 2441199521, ; 123: Google.Cloud.Firestore => 0x9181bfa1 => 12
	i32 2454642406, ; 124: System.Text.Encoding.dll => 0x924edee6 => 120
	i32 2458170485, ; 125: Proyecto => 0x9284b475 => 28
	i32 2465532216, ; 126: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 58
	i32 2471841756, ; 127: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 128: Java.Interop.dll => 0x93918882 => 21
	i32 2486847491, ; 129: Google.Api.Gax => 0x943a4803 => 7
	i32 2501346920, ; 130: System.Data.DataSetExtensions => 0x95178668 => 107
	i32 2505896520, ; 131: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 75
	i32 2526044369, ; 132: Proyecto.Android.dll => 0x969060d1 => 0
	i32 2581819634, ; 133: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 94
	i32 2620871830, ; 134: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 62
	i32 2624644809, ; 135: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 66
	i32 2633051222, ; 136: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 74
	i32 2635732976, ; 137: Google.Cloud.Firestore.dll => 0x9d1a17f0 => 12
	i32 2701096212, ; 138: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 91
	i32 2715334215, ; 139: System.Threading.Tasks.dll => 0xa1d8b647 => 115
	i32 2732626843, ; 140: Xamarin.AndroidX.Activity => 0xa2e0939b => 46
	i32 2737747696, ; 141: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 49
	i32 2744327253, ; 142: Google.Api.Gax.Grpc.dll => 0xa3931c55 => 8
	i32 2757554483, ; 143: Google.Api.Gax.Grpc => 0xa45cf133 => 8
	i32 2766581644, ; 144: Xamarin.Forms.Core => 0xa4e6af8c => 99
	i32 2778768386, ; 145: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 96
	i32 2810250172, ; 146: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 60
	i32 2818335264, ; 147: System.Linq.Async => 0xa7fc6220 => 36
	i32 2819470561, ; 148: System.Xml.dll => 0xa80db4e1 => 44
	i32 2839679515, ; 149: Google.LongRunning => 0xa942121b => 15
	i32 2853208004, ; 150: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 96
	i32 2855708567, ; 151: Xamarin.AndroidX.Transition => 0xaa36a797 => 92
	i32 2893550578, ; 152: Google.Apis.Core => 0xac7813f2 => 10
	i32 2898407901, ; 153: System.Management => 0xacc231dd => 37
	i32 2901442782, ; 154: System.Reflection => 0xacf080de => 114
	i32 2903344695, ; 155: System.ComponentModel.Composition => 0xad0d8637 => 110
	i32 2905242038, ; 156: mscorlib.dll => 0xad2a79b6 => 26
	i32 2912646636, ; 157: Google.Api.CommonProtos => 0xad9b75ec => 6
	i32 2916838712, ; 158: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 97
	i32 2919462931, ; 159: System.Numerics.Vectors.dll => 0xae037813 => 41
	i32 2921128767, ; 160: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 48
	i32 2978675010, ; 161: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 65
	i32 2990604888, ; 162: Google.Apis => 0xb2410258 => 11
	i32 3024354802, ; 163: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 70
	i32 3044182254, ; 164: FormsViewGroup => 0xb57288ee => 5
	i32 3057625584, ; 165: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 82
	i32 3075834255, ; 166: System.Threading.Tasks => 0xb755818f => 115
	i32 3106263381, ; 167: Grpc.Net.Common.dll => 0xb925d155 => 20
	i32 3111772706, ; 168: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3124832203, ; 169: System.Threading.Tasks.Extensions => 0xba4127cb => 121
	i32 3203277885, ; 170: Google.Api.Gax.dll => 0xbeee243d => 7
	i32 3204380047, ; 171: System.Data.dll => 0xbefef58f => 105
	i32 3211777861, ; 172: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 64
	i32 3220365878, ; 173: System.Threading => 0xbff2e236 => 119
	i32 3247949154, ; 174: Mono.Security => 0xc197c562 => 122
	i32 3258312781, ; 175: Xamarin.AndroidX.CardView => 0xc235e84d => 55
	i32 3265893370, ; 176: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 121
	i32 3267021929, ; 177: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 53
	i32 3299363146, ; 178: System.Text.Encoding => 0xc4a8494a => 120
	i32 3317135071, ; 179: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 63
	i32 3317144872, ; 180: System.Data => 0xc5b79d28 => 105
	i32 3340431453, ; 181: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 52
	i32 3346324047, ; 182: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 83
	i32 3353484488, ; 183: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 69
	i32 3362522851, ; 184: Xamarin.AndroidX.Core => 0xc86c06e3 => 61
	i32 3366347497, ; 185: Java.Interop => 0xc8a662e9 => 21
	i32 3374999561, ; 186: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 87
	i32 3395150330, ; 187: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 42
	i32 3404865022, ; 188: System.ServiceModel.Internals => 0xcaf21dfe => 112
	i32 3429136800, ; 189: System.Xml => 0xcc6479a0 => 44
	i32 3430777524, ; 190: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 191: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 66
	i32 3453592554, ; 192: Google.Apis.Core.dll => 0xcdd9a3ea => 10
	i32 3476120550, ; 193: Mono.Android => 0xcf3163e6 => 25
	i32 3486566296, ; 194: System.Transactions => 0xcfd0c798 => 106
	i32 3493954962, ; 195: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 57
	i32 3499097210, ; 196: Google.Protobuf.dll => 0xd08ffc7a => 16
	i32 3501239056, ; 197: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 53
	i32 3509114376, ; 198: System.Xml.Linq => 0xd128d608 => 45
	i32 3536029504, ; 199: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 100
	i32 3567349600, ; 200: System.ComponentModel.Composition.dll => 0xd4a16f60 => 110
	i32 3598063517, ; 201: Google.Cloud.Firestore.V1 => 0xd676179d => 13
	i32 3608519521, ; 202: System.Linq.dll => 0xd715a361 => 118
	i32 3612435020, ; 203: System.Management.dll => 0xd751624c => 37
	i32 3618140916, ; 204: Xamarin.AndroidX.Preference => 0xd7a872f4 => 85
	i32 3627220390, ; 205: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 86
	i32 3632359727, ; 206: Xamarin.Forms.Platform => 0xd881692f => 101
	i32 3633644679, ; 207: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 48
	i32 3641597786, ; 208: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 73
	i32 3645630983, ; 209: Google.Protobuf => 0xd94bea07 => 16
	i32 3672681054, ; 210: Mono.Android.dll => 0xdae8aa5e => 25
	i32 3676310014, ; 211: System.Web.Services.dll => 0xdb2009fe => 111
	i32 3682565725, ; 212: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 54
	i32 3684561358, ; 213: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 57
	i32 3689375977, ; 214: System.Drawing.Common => 0xdbe768e9 => 108
	i32 3718780102, ; 215: Xamarin.AndroidX.Annotation => 0xdda814c6 => 47
	i32 3724971120, ; 216: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 82
	i32 3748608112, ; 217: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 33
	i32 3757995660, ; 218: Google.Cloud.Location.dll => 0xdffe768c => 14
	i32 3758932259, ; 219: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 71
	i32 3786282454, ; 220: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 56
	i32 3793997468, ; 221: Google.Apis.Auth.dll => 0xe223ce9c => 9
	i32 3822602673, ; 222: Xamarin.AndroidX.Media => 0xe3d849b1 => 80
	i32 3829621856, ; 223: System.Numerics.dll => 0xe4436460 => 40
	i32 3841636137, ; 224: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 23
	i32 3885922214, ; 225: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 92
	i32 3896760992, ; 226: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 61
	i32 3920810846, ; 227: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 109
	i32 3921031405, ; 228: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 95
	i32 3931092270, ; 229: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 84
	i32 3945713374, ; 230: System.Data.DataSetExtensions.dll => 0xeb2ecede => 107
	i32 3946669811, ; 231: Proyecto.dll => 0xeb3d66f3 => 28
	i32 3955647286, ; 232: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 50
	i32 4024013275, ; 233: Firebase.Auth => 0xefd991db => 4
	i32 4025784931, ; 234: System.Memory => 0xeff49a63 => 38
	i32 4056144661, ; 235: Google.Cloud.Location => 0xf1c3db15 => 14
	i32 4059682726, ; 236: Google.Apis.dll => 0xf1f9d7a6 => 11
	i32 4073602200, ; 237: System.Threading.dll => 0xf2ce3c98 => 119
	i32 4082882467, ; 238: Google.Apis.Auth => 0xf35bd7a3 => 9
	i32 4105002889, ; 239: Mono.Security.dll => 0xf4ad5f89 => 122
	i32 4151237749, ; 240: System.Core => 0xf76edc75 => 32
	i32 4181436372, ; 241: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 116
	i32 4182413190, ; 242: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 77
	i32 4213026141, ; 243: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 33
	i32 4260525087, ; 244: System.Buffers => 0xfdf2741f => 29
	i32 4292120959 ; 245: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 77
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [246 x i32] [
	i32 75, i32 104, i32 27, i32 99, i32 89, i32 89, i32 56, i32 90, ; 0..7
	i32 54, i32 113, i32 70, i32 111, i32 59, i32 74, i32 68, i32 46, ; 8..15
	i32 40, i32 72, i32 20, i32 18, i32 38, i32 19, i32 58, i32 98, ; 16..23
	i32 117, i32 67, i32 116, i32 26, i32 34, i32 68, i32 79, i32 106, ; 24..31
	i32 22, i32 109, i32 63, i32 13, i32 95, i32 51, i32 45, i32 35, ; 32..39
	i32 108, i32 86, i32 104, i32 27, i32 72, i32 5, i32 117, i32 88, ; 40..47
	i32 23, i32 50, i32 101, i32 6, i32 76, i32 34, i32 36, i32 93, ; 48..55
	i32 83, i32 19, i32 51, i32 94, i32 65, i32 118, i32 112, i32 88, ; 56..63
	i32 80, i32 60, i32 42, i32 17, i32 102, i32 31, i32 35, i32 49, ; 64..71
	i32 31, i32 2, i32 64, i32 3, i32 78, i32 97, i32 62, i32 39, ; 72..79
	i32 43, i32 91, i32 103, i32 59, i32 113, i32 114, i32 55, i32 2, ; 80..87
	i32 90, i32 0, i32 32, i32 18, i32 67, i32 22, i32 78, i32 103, ; 88..95
	i32 84, i32 24, i32 98, i32 102, i32 52, i32 17, i32 81, i32 30, ; 96..103
	i32 29, i32 76, i32 73, i32 43, i32 41, i32 69, i32 100, i32 30, ; 104..111
	i32 24, i32 39, i32 4, i32 93, i32 79, i32 81, i32 71, i32 87, ; 112..119
	i32 47, i32 15, i32 85, i32 12, i32 120, i32 28, i32 58, i32 1, ; 120..127
	i32 21, i32 7, i32 107, i32 75, i32 0, i32 94, i32 62, i32 66, ; 128..135
	i32 74, i32 12, i32 91, i32 115, i32 46, i32 49, i32 8, i32 8, ; 136..143
	i32 99, i32 96, i32 60, i32 36, i32 44, i32 15, i32 96, i32 92, ; 144..151
	i32 10, i32 37, i32 114, i32 110, i32 26, i32 6, i32 97, i32 41, ; 152..159
	i32 48, i32 65, i32 11, i32 70, i32 5, i32 82, i32 115, i32 20, ; 160..167
	i32 3, i32 121, i32 7, i32 105, i32 64, i32 119, i32 122, i32 55, ; 168..175
	i32 121, i32 53, i32 120, i32 63, i32 105, i32 52, i32 83, i32 69, ; 176..183
	i32 61, i32 21, i32 87, i32 42, i32 112, i32 44, i32 1, i32 66, ; 184..191
	i32 10, i32 25, i32 106, i32 57, i32 16, i32 53, i32 45, i32 100, ; 192..199
	i32 110, i32 13, i32 118, i32 37, i32 85, i32 86, i32 101, i32 48, ; 200..207
	i32 73, i32 16, i32 25, i32 111, i32 54, i32 57, i32 108, i32 47, ; 208..215
	i32 82, i32 33, i32 14, i32 71, i32 56, i32 9, i32 80, i32 40, ; 216..223
	i32 23, i32 92, i32 61, i32 109, i32 95, i32 84, i32 107, i32 28, ; 224..231
	i32 50, i32 4, i32 38, i32 14, i32 11, i32 119, i32 9, i32 122, ; 232..239
	i32 32, i32 116, i32 77, i32 33, i32 29, i32 77 ; 240..245
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
