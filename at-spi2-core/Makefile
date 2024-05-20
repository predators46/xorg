include $(TOPDIR)/rules.mk

PKG_NAME:=at-spi2-core
PKG_VERSION:=2.52.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://download.gnome.org/sources/$(PKG_NAME)/2.52/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=0ac3fc8320c8d01fa147c272ba7fa03806389c6b03d3c406d0823e30e35ff5ab

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GNU LGPLv2.1
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=glib2/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/at-spi2-core
	SECTION:=xorg
	CATEGORY:=Xorg
	TITLE:=Base DBus XML interfaces for accessibility, the accessibility registry daemon, and atspi library.
	DEPENDS:=+glib2 +dbus +libxtst +libx11 +libxi +libxml2
	URL:=https://www.freedesktop.org/wiki/Accessibility/AT-SPI2/
endef

define Package/at-spi2-core/description
	This repository contains the DBus interface definitions for AT-SPI (Assistive Technology Service Provider Interface) — the core of an accessibility stack for free software systems.
	It also contains the basic daemons of the accessibility stack, the ATK library to make applications and GUI toolkits accessible, and the internal hooks between AT-SPI and ATK.
endef

MESON_ARGS += \
	-Ddbus_daemon=/usr/bin/dbus-daemon \
	-Duse_systemd=false \
	-Dintrospection=disabled \
	-Dx11=enabled

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include \
	  $(1)/usr/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share \
	  $(1)/usr/
endef

define Package/at-spi2-core/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,at-spi2-core))
