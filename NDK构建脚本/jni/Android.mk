LOCAL_PATH := $(call my-dir)

# 定义一个函数用于编译不同的模块
define build_module
include $(CLEAR_VARS)
LOCAL_SRC_FILES := $1
LOCAL_MODULE := $2

LOCAL_LDFLAGS += -llog -landroid

# 浅混淆 
# LOCAL_CPPFLAGS += -mllvm -sub -mllvm -fla -mllvm -split -mllvm -bcf -mllvm -sobf -mllvm -aesSeed=0x345678EDCRFVTGBYHNUJMIKOLPloveal
LOCAL_CPPFLAGS += -mllvm -sub -mllvm -sub_loop=4 -mllvm -fla -mllvm -split -mllvm -split_num=4 -mllvm -bcf -mllvm -bcf_loop=2 -mllvm -bcf_prob=50 -mllvm -sobf -mllvm -aesSeed=0x345678EDCRFVTGBYHNUJMIKOLPloveal
LOCAL_CPPFLAGS += -std=c++14 -frtti -fexceptions -DANDROID_TOOLCHAIN=clang -ffunction-sections -fdata-sections -fpermissive -fvisibility=hidden -D__STDC_CONSTANT_MACROS -llog
LOCAL_CFLAGS += -fomit-frame-pointer -funroll-loops -ffast-math -fno-strict-aliasing -march=armv8-a+crc+crypto -mtune=cortex-a53 -mfpu=neon-fp-armv8 -ffunction-sections -fdata-sections -O3 -fomit-frame-pointer

include $(BUILD_EXECUTABLE)
endef

# 编译不同的模块
$(eval $(call build_module,加密样本.cpp,加密混淆))
