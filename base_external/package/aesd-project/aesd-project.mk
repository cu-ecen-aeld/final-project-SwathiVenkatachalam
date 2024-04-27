##############################################################
#
# AESD-PROJECT
#
##############################################################

#TODO: Fill up the contents below in order to reference camera driver code
AESD_PROJECT_VERSION = '74db4a19fb916937b3117686414856b4e71f56aa'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_PROJECT_SITE = 'git@github.com:SwathiVenkatachalam/AESD_Camera_Driver.git'
AESD_PROJECT_SITE_METHOD = git
AESD_PROJECT_GIT_SUBMODULES = YES

define AESD_PROJECT_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_PROJECT_INSTALL_TARGET_CMDS
        $(INSTALL) -m 0755 $(@D)/camera/* $(TARGET_DIR)/usr/bin/
endef

$(eval $(generic-package))
