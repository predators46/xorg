# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=encodings
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.x.org/releases/individual/font/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=9ff13c621756cfa12e95f32ba48a5b23839e8f577d0048beda66c67dab4de975

HOST_BUILD_DEPENDS:=util-macros/host mkfontscale/host font-util/host
PKG_BUILD_DEPENDS:=util-macros mkfontscale/host font-util
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/encodings
  SECTION:=xorg
  CATEGORY:=Xorg
  TITLE:=X.org font encoding files
  URL:=http://xorg.freedesktop.org/
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/fonts \
	  $(1)/usr/share/
endef

#define Package/encodings/install
#	$(INSTALL_DIR) \
#	  $(1)/usr/share
#
#	$(CP) \
#	  $(PKG_INSTALL_DIR)/usr/share/fonts \
#	  $(1)/usr/share/
#endef

$(eval $(call BuildPackage,encodings))
$(eval $(call HostBuild))
