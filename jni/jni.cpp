#include <jni.h>
#include <com_example_jni_Native.h>

// ��ʾ�﷨����,ͨ������mk�ļ�ûŪ��,����������.hͷ�ļ�,������LOCAL_SRC_FLIE
JNIEXPORT jint JNICALL Java_com_example_jni_Native_add__I
  (JNIEnv * env, jobject obj, jint a) {
	return a +2;
};

/*
 * Class:     com_example_jni_Native
 * Method:    add
 * Signature: (II)I
 */
JNIEXPORT jint JNICALL Java_com_example_jni_Native_add__II
  (JNIEnv *env, jclass clazz, jint a, jint b) {
	return a +2;
};

