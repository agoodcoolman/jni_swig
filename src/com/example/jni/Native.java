package com.example.jni;

public class Native {
	/**
	 * UNIX.I������ָ��,����ǰ��Ŀ��Ŀ¼��,��ǰ��jniĿ¼��.
	 * swig -java -package com.apress.swig -outdir src/com/apress/swig jni/Unix.i
	 */
	static {
		System.loadLibrary("jni");
	}
	public native int add(int a);
	public static native int add(int a, int b);
}
