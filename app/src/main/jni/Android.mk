LOCAL_PATH := $(call my-dir)
MAIN_LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# Here is the name of your lib.
# When you change the lib name, change also on System.loadLibrary("") under OnCreate method on FloatingModMenuService.java
# Both must have same name
LOCAL_MODULE    := _MpG_TeaM

# Code optimization
LOCAL_ARM_MODE := arm
LOCAL_CFLAGS := -Wno-error=format-security -fpermissive -fvisibility=hidden -fvisibility-inlines-hidden
LOCAL_CFLAGS += -fno-rtti -fno-exceptions -g0 -fomit-frame-pointer -ffunction-sections -fdata-sections
LOCAL_CPPFLAGS += -fvisibility=hidden -ffunction-sections -fdata-sections
LOCAL_LDFLAGS += -Wl,--strip-all

# Here you add the cpp file
LOCAL_C_INCLUDES += $(MAIN_LOCAL_PATH)
LOCAL_SRC_FILES := src/main.cpp \
   src/Unity/Vector2.hpp \
   src/Unity/Vector3.hpp \
   src/Unity/Quaternion.hpp \
	src/Substrate/hde64.c \
	src/Substrate/SubstrateDebug.cpp \
	src/Substrate/SubstrateHook.cpp \
	src/Substrate/SubstratePosixMemory.cpp \
	src/KittyMemory/KittyMemory.cpp \
	src/KittyMemory/MemoryPatch.cpp

LOCAL_LDLIBS := -llog -landroid

include $(BUILD_SHARED_LIBRARY)