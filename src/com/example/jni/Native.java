package com.example.jni;

public class Native {
	/**
	 * UNIX.I的生成指令,到当前项目的目录下,当前既jni目录下.
	 * swig -java -package com.apress.swig -outdir src/com/apress/swig jni/Unix.i
	 */
	static {
		System.loadLibrary("jni");
	}
	public native int add(int a);
	public static native int add(int a, int b);
}
