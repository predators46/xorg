include $(TOPDIR)/rules.mk

PKG_NAME:=python-sphinxcontrib-qthelp
PKG_VERSION:=1.0.7
PKG_RELEASE:=1

PYPI_NAME:=sphinxcontrib_qthelp
PKG_HASH:=053dedc38823a80a7209a80860b16b722e9e0209e32fea98c90e4e6624588ed6

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

define Package/python3-sphinxcontrib-qthelp
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Sphinx qthelp extension
  URL:=https://github.com/sphinx-doc/sphinxcontrib-qthelp
  DEPENDS:=+python3
endef

define Package/python3-sphinxcontrib-qthelp/description
  sphinxcontrib-qthelp is a sphinx extension which outputs QtHelp document.
endef

$(eval $(call Py3Package,python3-sphinxcontrib-qthelp))
$(eval $(call BuildPackage,python3-sphinxcontrib-qthelp))
$(eval $(call BuildPackage,python3-sphinxcontrib-qthelp-src))
$(eval $(call HostBuild))
