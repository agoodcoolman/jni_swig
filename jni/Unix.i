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
// ���������getuid(),�����е�ʱ��,��java�в����쳣����
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
// ps:������������һ��,����㲻����һ��
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
// swigʹ��directors �����ṩ�Խ������Զ�̨�е�֧��, һ�����:1.%module(directors = 1) Unix  2.%feature("director") AsyncUidProvider;
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


