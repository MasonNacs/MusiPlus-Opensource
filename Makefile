DEBUG=0
FINALPACKAGE=1
include $(THEOS)/makefiles/common.mk

export ARCHS = armv7 armv7s arm64 arm64e
TWEAK_NAME = MusiPlus
MusiPlus_FILES = Tweak.xm
MusiPlus_FRAMEWORKS = UIKit
MusiPlus_LIBRARIES = sparkcolourpicker

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += musiplus
include $(THEOS_MAKE_PATH)/aggregate.mk
