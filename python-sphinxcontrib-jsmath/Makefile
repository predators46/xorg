include $(TOPDIR)/rules.mk

PKG_NAME:=python-sphinxcontrib-jsmath
PKG_VERSION:=1.0.1
PKG_RELEASE:=1

PYPI_NAME:=sphinxcontrib-jsmath
PKG_HASH:=a9925e4a4587247ed2191a22df5f6970656cb8ca2bd6284309578f2153e0c4b8

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

define Package/python3-sphinxcontrib-jsmath
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Sphinx jsmath extension
  URL:=https://github.com/sphinx-doc/sphinxcontrib-jsmath
  DEPENDS:=+python3
endef

define Package/python3-sphinxcontrib-jsmath/description
  sphinxcontrib-jsmath is a sphinx extension which renders display math in HTML via JavaScript.
endef

$(eval $(call Py3Package,python3-sphinxcontrib-jsmath))
$(eval $(call BuildPackage,python3-sphinxcontrib-jsmath))
$(eval $(call BuildPackage,python3-sphinxcontrib-jsmath-src))
$(eval $(call HostBuild))
