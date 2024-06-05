include $(TOPDIR)/rules.mk

PKG_NAME:=sphinxcontrib-serializinghtml
PKG_VERSION:=1.1.10
PKG_RELEASE:=1

PYPI_NAME:=sphinxcontrib_serializinghtml
PKG_HASH:=93f3f5dc458b91b192fe10c397e324f262cf163d79f3282c158e8436a2c4511f

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

define Package/python3-sphinxcontrib-serializinghtml
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Sphinx serializinghtml extension
  URL:=https://github.com/sphinx-doc/sphinxcontrib-serializinghtml
  DEPENDS:=+python3
endef

define Package/python3-sphinxcontrib-serializinghtml/description
  sphinxcontrib-serializinghtml is a sphinx extension which outputs "serialized" HTML files (json and pickle)
endef

$(eval $(call Py3Package,python3-sphinxcontrib-serializinghtml))
$(eval $(call BuildPackage,python3-sphinxcontrib-serializinghtml))
$(eval $(call BuildPackage,python3-sphinxcontrib-serializinghtml-src))
$(eval $(call HostBuild))
