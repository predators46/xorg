# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=at-spi2-core
PKG_VERSION:=2.52.0
_PKG_VERSION:=2.52
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://download.gnome.org/sources/$(PKG_NAME)/$(_PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=0ac3fc8320c8d01fa147c272ba7fa03806389c6b03d3c406d0823e30e35ff5ab

#HOST_BUILD_DEPENDS:=util-macros/host mkfontscale/host
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/at-spi2-core
  SECTION:=xorg
  CATEGORY:=Xorg
  DEPENDS:=+glib2 +dbus +libxtst +libx11 +libxi
  TITLE:=Protocol definitions and daemon for D-Bus at-spi
  URL:=http://www.linuxfoundation.org/en/AT-SPI_on_D-Bus
endef

#TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed
TARGET_LDFLAGS += -Wl,--as-needed

CONFIGURE_ARGS += \
  --prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include \
	  $(1)/usr/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/at-spi2-core/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,at-spi2-core))
