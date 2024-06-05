include $(TOPDIR)/rules.mk

PKG_NAME:=-tun2socks-python
PKG_VERSION:=2.5.2.1
PKG_RELEASE:=1

PYPI_NAME:=tun2socks
PKG_HASH:=c24f0b1c538355db2da9a3af18b574b1a0bb7a00616557005e8ca4e30441c2c1

PKG_LICENSE:=GPL-3.0 license
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=

PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-wheel/host golang/host

PYTHON3_PKG_BUILD_VARS:= $(GO_PKG_VARS)

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/tun2socks-python3
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Tun2socks Python
  URL:=https://github.com/LorenEteval/tun2socks-python
  DEPENDS:=$(GO_ARCH_DEPENDS) +python3 +python3-setuptools
endef

define Package/tun2socks-python3/description
Python bindings for go tun2socks.
endef

$(eval $(call Py3Package,tun2socks-python3))
$(eval $(call BuildPackage,tun2socks-python3))
$(eval $(call BuildPackage,tun2socks-python3-src))
