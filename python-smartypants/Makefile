include $(TOPDIR)/rules.mk

PKG_NAME:=python-smartypants
PKG_VERSION:=2.0.1
PKG_RELEASE:=1

PYPI_NAME:=smartypants.py

PKG_SOURCE_URL:=https://codeload.github.com/leohemsted/smartypants.py/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=b98191911ff3b4144ef8ad53e776a2d0ad24bd508a905c6ce523597c40022773

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause license
PKG_LICENSE_FILES:=LICENSE

HOST_REMOVE_FILES:=Makefile

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-cython/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-cython/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-smartypants
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python with the SmartyPants
  URL:=https://github.com/leohemsted/smartypants.py
  DEPENDS:=+python3
endef

define Package/python3-smartypants/description
  Translate plain ASCII punctuation characters into “smart” typographic punctuation HTML entities.
endef

$(eval $(call Py3Package,python3-smartypants))
$(eval $(call BuildPackage,python3-smartypants))
$(eval $(call BuildPackage,python3-smartypants-src))
$(eval $(call HostBuild))
