# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=iceauth
PKG_VERSION:=1.0.10
PKG_RELEASE:=1

PKG_SOURCE_URL:=http://xorg.freedesktop.org/releases/individual/app/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=3deefb7da26af9dc799b5628d929d91c9af68c78575639944db3b955f29aa029

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/iceauth
  SECTION:=xorg
  CATEGORY:=Xorg
  DEPENDS:=+libice +libx11
  TITLE:=the ICE authority file utility
  URL:=http://xorg.freedesktop.org/
endef

define Package/iceauth/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
endef

$(eval $(call BuildPackage,iceauth))

