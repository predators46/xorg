include $(TOPDIR)/rules.mk

PKG_NAME:=at-spi2-atk
PKG_VERSION:=2.38.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://download.gnome.org/sources/$(PKG_NAME)/2.38
PKG_HASH:=cfa008a5af822b36ae6287f18182c40c91dd699c55faa38605881ed175ca464f

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GNU LGPLv2.1
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=glib2/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/at-spi2-atk
	SECTION:=xorg
	CATEGORY:=Xorg
	TITLE:=A GTK module that bridges ATK to D-Bus at-spi
	DEPENDS:=+glib2 +dbus +at-spi2-core +atk +libxml2
	URL:=https://www.freedesktop.org/wiki/Accessibility/AT-SPI2/
endef

define Package/at-spi2-atk/description
	AT-SPI2-ATK - implementation of the ATK interfaces in terms of the libatspi2 API
endef

MESON_ARGS += \
	-Dtests=false

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
	  $(PKG_INSTALL_DIR)/usr/lib/{gnome-settings-daemon-3.0,gtk-2.0,*.so*} \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,at-spi2-atk))
