# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=xsetroot
PKG_VERSION:=1.1.3
PKG_RELEASE:=1

PKG_SOURCE_URL:=http://xorg.freedesktop.org/releases/individual/app/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=6081b45a9eb4426e045d259d1e144b32417fb635e5b96aa90647365ac96638d1

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/xsetroot
  SECTION:=xorg
  CATEGORY:=Xorg
  DEPENDS:=+libx11 +libxcursor +xbitmaps +libxmu
  TITLE:=is the root window parameter setting utility for X
  URL:=http://xorg.freedesktop.org/
endef

define Package/xsetroot/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
endef

$(eval $(call BuildPackage,xsetroot))

