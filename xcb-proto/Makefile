# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=xcb-proto
PKG_VERSION:=1.16.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://xcb.freedesktop.org/dist/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=a75a1848ad2a89a82d841a51be56ce988ff3c63a8d6bf4383ae3219d8d915119

PKG_BUILD_DEPENDS:=python3/host xorgproto
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/xcb-proto
  SECTION:=libs
  CATEGORY:=Libraries
  DEPENDS:=
  TITLE:=XML-XCB protocol descriptions
  URL:=https://xcb.freedesktop.org
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
  --prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/lib \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,python3.11} \
	  $(1)/usr/lib/
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/xcb \
	  $(1)/usr/share/
	$(SED) \
		 's,/usr/share,$$$${prefix}/share,g' \
		 $(1)/usr/lib/pkgconfig/xcb-proto.pc
endef

define Package/xcb-proto/install
endef

$(eval $(call BuildPackage,xcb-proto))
