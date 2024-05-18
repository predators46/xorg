include $(TOPDIR)/rules.mk

PKG_NAME:=python-alabaster
PKG_VERSION:=0.7.16
PKG_RELEASE:=1

PYPI_NAME:=alabaster
PKG_HASH:=75a8b99c28a5dad50dd7f8ccdd447a121ddb3892da9e53d1ca5cca3106d58d65

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.rst

HOST_BUILD_DEPENDS:=python-flit-core/host
PKG_BUILD_DEPENDS:=python-flit-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-alabaster
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A light, configurable Sphinx theme
  URL:=https://github.com/sphinx-doc/alabaster
  DEPENDS:=+python3
endef

define Package/python3-alabaster/description
  Alabaster is a visually (c)lean, responsive, configurable theme for the Sphinx documentation system.
  It requires Python 3.9 or newer and Sphinx 3.4 or newer.
endef

$(eval $(call Py3Package,python3-alabaster))
$(eval $(call BuildPackage,python3-alabaster))
$(eval $(call BuildPackage,python3-alabaster-src))
$(eval $(call HostBuild))
