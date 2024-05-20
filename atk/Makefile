include $(TOPDIR)/rules.mk

PKG_NAME:=atk
PKG_VERSION:=2.38.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://download.gnome.org/sources/$(PKG_NAME)/2.38
PKG_HASH:=ac4de2a4ef4bd5665052952fe169657e65e895c5057dffb3c2a810f6191a0c36

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GNU Library General Public License v2 only
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=glib2/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/atk
	SECTION:=xorg
	CATEGORY:=Xorg
	TITLE:=A library providing a set of interfaces for accessibility
	DEPENDS:=+glib2
	URL:=https://www.gtk.org/
endef

define Package/atk/description
	A library providing a set of interfaces for accessibility (development files)
endef

MESON_ARGS += \
	-Ddocs=disabled \
	-Dintrospection=disabled

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

define Package/atk/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,atk))
