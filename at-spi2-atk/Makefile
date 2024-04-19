# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=at-spi2-atk
PKG_VERSION:=2.38.0
_PKG_VERSION:=2.38
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://download.gnome.org/sources/$(PKG_NAME)/$(_PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=cfa008a5af822b36ae6287f18182c40c91dd699c55faa38605881ed175ca464f

#HOST_BUILD_DEPENDS:=util-macros/host mkfontscale/host
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/at-spi2-atk
  SECTION:=xorg
  CATEGORY:=Xorg
  DEPENDS:=+glib2 +dbus +at-spi2-core +atk
  TITLE:=A GTK module that bridges ATK to D-Bus at-spi
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

define Package/at-spi2-atk/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,at-spi2-atk))
