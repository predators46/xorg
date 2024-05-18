include $(TOPDIR)/rules.mk

PKG_NAME:=python-sphinxcontrib-htmlhelp
PKG_VERSION:=2.0.5
PKG_RELEASE:=1

PYPI_NAME:=sphinxcontrib_htmlhelp
PKG_HASH:=0dc87637d5de53dd5eec3a6a01753b1ccf99494bd756aafecd74b4fa9e729015

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-sphinxcontrib-htmlhelp
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Sphinx htmlhelp extension
  URL:=https://github.com/sphinx-doc/sphinxcontrib-htmlhelp
  DEPENDS:=+python3
endef

define Package/python3-sphinxcontrib-htmlhelp/description
  sphinxcontrib-htmlhelp is a sphinx extension which renders HTML help files.
endef

$(eval $(call Py3Package,python3-sphinxcontrib-htmlhelp))
$(eval $(call BuildPackage,python3-sphinxcontrib-htmlhelp))
$(eval $(call BuildPackage,python3-sphinxcontrib-htmlhelp-src))
$(eval $(call HostBuild))
