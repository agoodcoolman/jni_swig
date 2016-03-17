##Android构建系统的SWIG扩展
#检查变量 MY_SWIG_PACKAGE 是否已经定义
ifndef MY_SWIG_PACKAGE
	$(error MY_SWIG_PACKAGE is not defined.)
endif
# 用斜线代替java目录中的圆点
MY_SWIG_OUTDIR:=$(NDK_PROJECT_PATH)/src/$(subst .,/,$(MY_SWIG_PACKAGE))
#SWIG的默认类型是c
ifndef MY_SWIG_TYPE
 MY_SWIG_TYPE :=C
endif
#设置SWIG的模式
ifeq ($(MY_SWIG_TYPE), cxx)
   MY_SWIG_MODE := - c++
else
   MY_SWIG_MODE := c
endif
#追加SWIG封装源文件
LOCAL_SRC_FILES+= $(foreach MY_SWIG_INTERFACE,\
	$(MY_SWIG_INTERFACES),\
	$(basename $(MY_SWIG_INTERFACE))_wrap.$(MY_SWIG_TYPE))
#添加.cxx作为C++的扩展名	
LOCAL_CPP_EXTENSION+ = .cxx
#生成SWIG 封装代码()
%_wrap.$(MY_SWIG_TYPE) : %.i
	$(call host-mkdir,$(MY_SWIG_OUTDIR))
	swig -java \
	$(MY_SWIG_MODE) \
	-package $(MY_SWIG_PACKAGE) \
	-outdir $(MY_SWIG_OUTDIR) \
	 $<


