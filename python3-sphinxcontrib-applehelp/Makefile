include $(TOPDIR)/rules.mk

PKG_NAME:=sphinxcontrib-applehelp
PKG_VERSION:=1.0.8
PKG_RELEASE:=1

PYPI_NAME:=sphinxcontrib_applehelp
PKG_HASH:=c40a4f96f3776c4393d933412053962fac2b84f4c99a7982ba42e09576a70619

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

define Package/python3-sphinxcontrib-applehelp
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Sphinx applehelp extension
  URL:=https://github.com/sphinx-doc/sphinxcontrib-applehelp
  DEPENDS:=+python3
endef

define Package/python3-sphinxcontrib-applehelp/description
  sphinxcontrib-applehelp is a sphinx extension which outputs Apple help books.
endef

$(eval $(call Py3Package,python3-sphinxcontrib-applehelp))
$(eval $(call BuildPackage,python3-sphinxcontrib-applehelp))
$(eval $(call BuildPackage,python3-sphinxcontrib-applehelp-src))
$(eval $(call HostBuild))
