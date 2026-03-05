#ifndef __FRIDA_JNI_H__
#define __FRIDA_JNI_H__

#include <jni.h>

G_BEGIN_DECLS

typedef jclass (* JNIFindClassFunc) (JNIEnv *, const char *);
typedef jint (* JNIPushLocalFrameFunc) (JNIEnv *, jint);
typedef jobject (* JNIPopLocalFrameFunc) (JNIEnv *, jobject);

G_END_DECLS

#endif
