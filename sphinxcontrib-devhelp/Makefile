include $(TOPDIR)/rules.mk

PKG_NAME:=sphinxcontrib-devhelp
PKG_VERSION:=1.0.6
PKG_RELEASE:=1

PYPI_NAME:=sphinxcontrib_devhelp
PKG_HASH:=9893fd3f90506bc4b97bdb977ceb8fbd823989f4316b28c3841ec128544372d3

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-flit-core/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-flit-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-sphinxcontrib-devhelp
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Sphinx devhelp extension
  URL:=https://github.com/sphinx-doc/sphinxcontrib-devhelp
  DEPENDS:=+python3
endef

define Package/python3-sphinxcontrib-devhelp/description
  sphinxcontrib-devhelp is a sphinx extension which outputs Devhelp document.
endef

$(eval $(call Py3Package,python3-sphinxcontrib-devhelp))
$(eval $(call BuildPackage,python3-sphinxcontrib-devhelp))
$(eval $(call BuildPackage,python3-sphinxcontrib-devhelp-src))
$(eval $(call HostBuild))
