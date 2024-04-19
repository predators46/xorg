# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=xbitmaps
PKG_VERSION:=1.1.3
PKG_RELEASE:=1

PKG_SOURCE_URL:= https://www.x.org/pub/individual/data/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=ad6cad54887832a17d86c2ccfc5e52a1dfab090f8307b152c78b0e1529cd0f7a

PKG_BUILD_DEPENDS:=util-macros
PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf

PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/xbitmaps
  SECTION:=xorg
  CATEGORY:=Xorg
  DEPENDS:=
  TITLE:=contains bitmap images used by applications built in Xorg
  URL:=http://xorg.freedesktop.org/
endef

CONFIGURE_ARGS += \
  --prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/X11 \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/pkgconfig \
	  $(1)/usr/lib/
endef

define Package/xbitmaps/install
	$(INSTALL_DIR) \
	  $(1)/usr/include/X11

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/X11/bitmaps \
	  $(1)/usr/include/X11/
endef

$(eval $(call BuildPackage,xbitmaps))
