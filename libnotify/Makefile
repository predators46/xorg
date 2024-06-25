include $(TOPDIR)/rules.mk

PKG_NAME:=libnotify
PKG_VERSION:=0.8.3
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://download.gnome.org/sources/libnotify/0.8/
PKG_HASH:=ee8f3ef946156ad3406fdf45feedbdcd932dbd211ab4f16f75eba4f36fb2f6c0

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1-or-later
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=gtk3

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/libnotify
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Send desktop notifications.
	DEPENDS:=+gdk-pixbuf +glib2
	URL:=https://gitlab.gnome.org/GNOME/libnotify
endef

define Package/libnotify/description
	libnotify is a library for sending desktop notifications to a notification daemon, as defined in the org.freedesktop.Notifications Desktop Specification.
	These notifications can be used to inform the user about an event or display some form of information without getting in the user's way.
endef

MESON_ARGS += \
	-Dtests=false \
	-Dintrospection=disabled \
	-Dman=false \
	-Dgtk_doc=false \
	-Ddocbook_docs=disabled

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/libnotify \
	  $(1)/usr/include/
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/libnotify/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/notify-send \
	  $(1)/usr/bin/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libnotify))
