# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=xf86-input-libinput
PKG_VERSION:=1.4.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.x.org/releases/individual/driver/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=3a3d14cd895dc75b59ae2783b888031956a0bac7a1eff16d240dbb9d5df3e398

PKG_BUILD_DEPENDS:=util-macros xorgproto
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/xf86-input-libinput
  SECTION:=xorg
  CATEGORY:=Xorg
  DEPENDS:=+libinput +xorg-server
  TITLE:=X.Org input driver based on libinput
  URL:=https://xorg.freedesktop.org
endef

LDFLAGS:="$LDFLAGS -Wl,-z,lazy"

CONFIGURE_ARGS += \
  --prefix=/usr

#define Build/InstallDev
#	$(INSTALL_DIR) \
#	  $(1)/usr/include \
#	  $(1)/usr/lib
#
#	$(CP) \
#	  $(PKG_INSTALL_DIR)/usr/include/* \
#	  $(1)/usr/include/
#
#	$(CP) \
#	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
#	  $(1)/usr/lib/
#endef

define Package/xf86-input-libinput/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib/xorg/modules/input \
	  $(1)/etc/X11

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/xorg/modules/input/*.so* \
	  $(1)/usr/lib/xorg/modules/input/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/X11/xorg.conf.d \
	  $(1)/etc/X11/
endef

$(eval $(call BuildPackage,xf86-input-libinput))
