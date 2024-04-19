# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=sessreg
PKG_VERSION:=1.1.3
PKG_RELEASE:=1

PKG_SOURCE_URL:=http://xorg.freedesktop.org/releases/individual/app/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=022acd5de8077dddc4f919961f79e102ecd5f3228a333681af5cd0e7344facc2

PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/sessreg
  SECTION:=xorg
  CATEGORY:=Xorg
  DEPENDS:=+libx11
  TITLE:=manages utmp/wtmp entries for non-init clients.
  URL:=http://xorg.freedesktop.org/
endef

define Package/sessreg/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
endef

$(eval $(call BuildPackage,sessreg))

