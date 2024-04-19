# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=xinit
PKG_VERSION:=1.4.2
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.x.org/releases/individual/app/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=b7d8dc8d22ef9f15985a10b606ee4f2aad6828befa437359934647e88d331f23

PKG_BUILD_DEPENDS:=util-macros
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/xinit
  SECTION:=xorg
  CATEGORY:=Xorg
  DEPENDS:=+xauth +mcookie +xmodmap +xrdb +libx11
  TITLE:=X.Org initialisation program
  URL:=http://xorg.freedesktop.org/
endef

CONFIGURE_ARGS += \
  --prefix=/usr \
  --with-xinitdir=/etc/X11/xinit

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

define Package/xinit/install
	$(INSTALL_DIR) \
	  $(1)/etc/X11/xinit/xinitrc.d \
	  $(1)/usr/sbin \

	$(CP) \
	  $(PKG_INSTALL_DIR)/etc/X11/xinit/* \
	  $(1)/etc/X11/xinit/

	$(INSTALL_DATA) ./files/* $(1)/etc/X11/xinit/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/sbin/

endef

$(eval $(call BuildPackage,xinit))
