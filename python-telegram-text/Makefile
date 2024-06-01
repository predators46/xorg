include $(TOPDIR)/rules.mk

PKG_NAME:=python-telegram-text
PKG_VERSION:=0.2.0
PKG_RELEASE:=1

PYPI_NAME:=telegram_text
PKG_HASH:=ee295a35f2c77246dd9a80c5e1a8deccc598958dff35740697901c632c6121fa

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT license
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-poetry-core/host python-installer/host
PKG_BUILD_DEPENDS:=python-poetry-core/host python-installer/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-telegram-text
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python markup module for Telegram messenger
  URL:=https://github.com/SKY-ALIN/telegram-text
  DEPENDS:=+python3
endef

define Package/python3-telegram-text/description
  This module provides a rich list of components to build any possible markup fast and render it to specific html or MarkdownV2 formats.
endef

$(eval $(call Py3Package,python3-telegram-text))
$(eval $(call BuildPackage,python3-telegram-text))
$(eval $(call BuildPackage,python3-telegram-text-src))
$(eval $(call HostBuild))
