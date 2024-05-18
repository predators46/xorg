include $(TOPDIR)/rules.mk

PKG_NAME:=python-gpep517
PKG_VERSION:=16
PKG_RELEASE:=1

PYPI_NAME:=gpep517
PKG_HASH:=9832d44bc180fdfc790490842d0a8fe4d72b99cba2466770ff2fa8563d048538

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0 license
PKG_LICENSE_FILES:=COPYING

PKG_HOST_ONLY:=1
HOST_BUILD_DEPENDS:=python3/host python-installer/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-gpep517
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python package builder and installer for non-pip-centric world
  URL:=https://github.com/projg2/gpep517
  DEPENDS:=+python3 +python3-installer
  BUILDONLY:=1
endef

define Package/python3-gpep517/description
gpep517 is a minimal tool to aid building wheels for Python packages through PEP 517-compliant build systems and installing them.
The tool originated from Gentoo with its primary goals being absolutely minimal dependency footprint to ease clean bootstrap without bundling dependencies, and clean separation of functions to aid external package managers.
It is the tool of choice for a world that does not revolve around pip and venvs.
endef

$(eval $(call Py3Package,python3-gpep517))
$(eval $(call BuildPackage,python3-gpep517))
$(eval $(call BuildPackage,python3-gpep517-src))
$(eval $(call HostBuild))
