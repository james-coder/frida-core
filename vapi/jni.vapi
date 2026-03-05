[CCode (cheader_filename = "jni.h", gir_namespace = "Jni", gir_version = "1.0")]
namespace JNI {
	public const int VERSION_1_1;
	public const int VERSION_1_2;
	public const int VERSION_1_4;
	public const int VERSION_1_6;

	[CCode (cname = "jint", cprefix = "JNI_", has_type_id = false)]
	public enum Result {
		OK,
		ERR,
		EDETACHED,
		EVERSION,
		ENOMEM,
		EEXIST,
		EINVAL,
	}

	[CCode (cname = "JavaVMInitArgs", has_destroy_function = false)]
	public struct VMInitArgs {
		public int version;

		[CCode (array_length_cname = "nOptions")]
		public VMOption[] options;
		[CCode (cname = "ignoreUnrecognized")]
		public bool ignore_unrecognized;
	}

	[CCode (cname = "JavaVMOption", has_destroy_function = false)]
	public struct VMOption {
		[CCode (cname = "optionString")]
		public string option_string;
		[CCode (cname = "extraInfo")]
		public void * extra_info;
	}

	[CCode (cname = "struct JNINativeInterface")]
	public struct NativeInterface {
		[CCode (cname = "PushLocalFrame")]
		public PushLocalFrameFunc push_local_frame;
	}

	[CCode (has_target = false)]
	public delegate Result PushLocalFrameFunc (NativeInterface ** env, int capacity);
}
