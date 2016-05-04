%module (directors = 1) Unix
%{
#include <unistd.h>
#include <Points.h>
#include <stdlib.h>

using namespace std;
%}
%include <Points.h>
class Points {
  
	public:
		Points(){};
		~Points(){};
		void funca(int a);
		void fun(int a = 1, int b = 2);
};


%javaconst(1);
#define MAX_WIDHT 200
%javaconst(0);
%constant int MAX_HEIGHT = 300;
typedef unsigned int uid_t;
// 处理下面的getuid(),在运行的时候,在java中捕获异常处理
%javaexception("java.lang.IllegalAccessException") getuid {
	$action
	if (!result) {
	jclass jclazz = jenv->FindClass("java/lang/IllegalAccessException");
	jenv->ThrowNew(jclazz, "Illegal Access");
	return $null;
	}
}
extern uid_t getuid(void);


/*%immutable;
extern int read_only;
%mutable;
extern int write_only;
*/

%begin %{
	extern int counter;
%}



//%javaconst(1);
//%include "enumtypeunsafe.swg"
//%include "enums.swg"
//enum Numbers {ONE = 1, TWO = 2, THREE};

/*struct Potin{
	inx x;
	int y;
};*/
// ps:这里是在声明一下,如果你不声明一下
%{
	class AsyncUidProvider  {
		public:
			AsyncUidProvider(){}
			virtual ~AsyncUidProvider(){}
			void get() {
				onUid(getuid());
			}
			virtual void onUid(uid_t uid){}
	};
	
%}
// swig使用directors 特征提供对交叉语言多台行的支持, 一般禁用:1.%module(directors = 1) Unix  2.%feature("director") AsyncUidProvider;
%typemap("javapackage") AsyncUidProvider, AsyncUidProvider *, AsyncUidProvider & "com.apress.swig";
%feature("director") AsyncUidProvider;
class AsyncUidProvider  {
		public:
			AsyncUidProvider(){}
			virtual ~AsyncUidProvider(){}
			void get() {
				onUid(getuid());
			}
			 virtual void onUid(uid_t uid){}
	};


