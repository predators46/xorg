include $(TOPDIR)/rules.mk

PKG_NAME:=python-telegram
PKG_VERSION:=0.18.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/alexander-akhmetov/python-telegram/archive/$(PKG_VERSION)
PKG_HASH:=f1ae6806f9f68583ff2816bc5b9d2d5ae88cb3364e5bc1e4080afd56e18a8f84

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT license
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-build/host python-installer/host python-wheel/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-build/host python-installer/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-telegram
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python client for the Telegram's tdlib
  URL:=https://github.com/alexander-akhmetov/python-telegram
  DEPENDS:=+python3 +python3-telegram-text +python3-pydoc +telegram-tdlib
endef

define Package/python3-telegram/description
  Python API for the tdlib library. It helps you build your own Telegram clients.
endef

$(eval $(call Py3Package,python3-telegram))
$(eval $(call BuildPackage,python3-telegram))
$(eval $(call BuildPackage,python3-telegram-src))
$(eval $(call HostBuild))
