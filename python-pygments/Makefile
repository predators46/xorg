include $(TOPDIR)/rules.mk

PKG_NAME:=python-pygments
PKG_VERSION:=2.18.0
PKG_RELEASE:=1

PYPI_NAME:=pygments
PKG_HASH:=786ff802f32e91311bff3889f6e9a86e81505fe99f2735bb6d60ae0c5004f199

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause license
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-hatchling/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-hatchling/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-pygments
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pygments is a syntax highlighting package written in Python.
  URL:=https://github.com/pallets/jinja/
  DEPENDS:=+python3
endef

define Package/python3-pygments/description
  It is a generic syntax highlighter suitable for use in code hosting, forums, wikis or other applications that need to prettify source code.
endef

$(eval $(call Py3Package,python3-pygments))
$(eval $(call BuildPackage,python3-pygments))
$(eval $(call BuildPackage,python3-pygments-src))
$(eval $(call HostBuild))
