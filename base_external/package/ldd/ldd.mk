
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = 20f87e52a38743f7e647572b5c3826603bb9fe1c
LDD_SITE = git@github.com:huuquy99/assignment7-part2-huuquy99.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules scull 

define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -d $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
