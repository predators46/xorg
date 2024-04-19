# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=luit
PKG_VERSION:=20240102
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://invisible-island.net/archives/luit/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tgz
PKG_HASH:=a07aea28cdcec50ef225d8c96d3944c3ef6401a913b0d78a84ddc85191ebc082

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/luit
  SECTION:=xorg
  CATEGORY:=Xorg
  DEPENDS:=+libx11 +libfontenc
  TITLE:=provides locale and ISO 2022 support for Unicode terminals
  URL:=http://xorg.freedesktop.org/
endef

TARGET_CFLAGS+=-U_XOPEN_SOURCE -D_XOPEN_SOURCE=600

define Package/luit/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
endef

$(eval $(call BuildPackage,luit))

