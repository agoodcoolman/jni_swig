# jni
初始化提交

1.项目使用的的ndk,最开始在ndk中使用呢,无法使用c++的库,引入头文件直接报错,于是在application.mk中配置之后,就可以引入c++的库了
2.项目中使用了android底层的log库,使用的时候报错,解决方法是因为使用的是C++的类,然后打印log的类其实是C实现的,所以要把C++的string转成C的String即可.

3.这个项目 是简单的swig的使用,根据高级android C++ 编程写的Demo,获取uid,自动生成java与ndk交互的代码.
