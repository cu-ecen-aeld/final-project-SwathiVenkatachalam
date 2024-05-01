##############################################################
#
# STEREO VISION APPLICATION PACKAGE
#
##############################################################

#TODO: Fill up the contents below in order to reference camera driver code
SV_APP_VERSION = '7153bf49f985871cab53c3243a668cfd2739c0e3'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
SV_APP_SITE = 'git@github.com:cu-ecen-aeld/final-project-KapureCUB.git'
SV_APP_SITE_METHOD = git
SV_APP_GIT_SUBMODULES = YES

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define SV_APP_INSTALL_TARGET_CMDS
        $(INSTALL) -m 0755 $(@D)/capture.py $(TARGET_DIR)/root
endef

$(eval $(generic-package))
