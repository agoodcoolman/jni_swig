%module Unix
%{
#include <unistd.h>

%}

typedef unsigned int uid_t;

extern uid_t getuid(void);

/*void drawByPointer(struct Point*p);

void func (int a =1, int b =2);

void func(double d);
void func(int c);

class A {
public:
	A();
	~A();
}

%exception getuid{
$action
if(!result) {
	jclass jclazz = env->FindClass("java/lang/OutOfMemoryError");
	jenv->ThrowNew(clazz, "out of memory");
	return $null;
}
}*/
