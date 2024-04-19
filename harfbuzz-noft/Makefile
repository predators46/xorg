# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=harfbuzz-noft
_PKG_NAME:=harfbuzz
PKG_VERSION:=8.4.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://github.com/harfbuzz/harfbuzz/releases/download/$(PKG_VERSION)/
PKG_SOURCE:=$(_PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=af4ea73e25ab748c8c063b78c2f88e48833db9b2ac369e29bd115702e789755e

PKG_BUILD_DIR:=$(BUILD_DIR)/$(_PKG_NAME)-$(PKG_VERSION)

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/harfbuzz-noft
  SECTION:=libs
  CATEGORY:=Libraries
  DEPENDS:=+libstdcpp
  TITLE:=Text shaping library for freetype build
  URL:=https://freedesktop.org/wiki/Software/HarfBuzz
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

TARGET_CFLAGS += $(FPIC)

CONFIGURE_ARGS += \
  --prefix=/usr \
  --enable-gtk-doc=no \
  --enable-gtk-doc-html=no \
  --enable-gtk-doc-pdf=no \
  --with-glib=no \
  --with-icu=no \
  --with-fontconfig=no \
  --with-freetype=no \
  --with-cairo=no \
  --enable-static

#  --enable-static
#  --disable-shared \

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_BUILD_DIR)/src/*.h \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{cmake,pkgconfig,*.so*,*.a,*.la} \
	  $(1)/usr/lib/
endef

define Package/harfbuzz-noft/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,harfbuzz-noft))
