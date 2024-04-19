# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=libva
PKG_VERSION:=2.21.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://github.com/intel/libva/releases/download/$(PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_HASH:=f7c3fffef3f04eb146e036dad2587d852bfb70e4926d014bf437244915ef7425

##PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)
##PKG_BUILD_DEPENDS:=util-macros xorgproto
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libva
  SECTION:=libs
  CATEGORY:=Libraries
  DEPENDS:=+libx11 +libxfixes +libxext +libdrm
  TITLE:=Video Acceleration (VA) API for Linux
  URL:=https://freedesktop.org/wiki/Software/vaapi
endef

CONFIGURE_ARGS += \
  --prefix=/usr \
  --enable-x11 \
  --disable-glx \
  --disable-wayland \
  --disable-static \
  --enable-shared

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/* \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/libva/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libva))
