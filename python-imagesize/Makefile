include $(TOPDIR)/rules.mk

PKG_NAME:=python-imagesize
PKG_VERSION:=1.4.1
PKG_RELEASE:=1

PYPI_NAME:=imagesize
PKG_HASH:=69150444affb9cb0d5cc5a92b3676f0b2fb7cd9ae39e947a5e11a36b4497cd4a

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT license
PKG_LICENSE_FILES:=LICENSE.rst

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-imagesize
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Getting image size from png/jpeg/jpeg2000/gif file
  URL:=https://github.com/shibukawa/imagesize_py
  DEPENDS:=+python3
endef

define Package/python3-imagesize/description
  It parses image files’ header and return image size.
endef

$(eval $(call Py3Package,python3-imagesize))
$(eval $(call BuildPackage,python3-imagesize))
$(eval $(call BuildPackage,python3-imagesize-src))
$(eval $(call HostBuild))
