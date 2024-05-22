include $(TOPDIR)/rules.mk

PKG_NAME:=gtk3
PKG_VERSION:=3.24.42
PKG_RELEASE:=1

PKG_SOURCE:=gtk+-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://download.gnome.org/sources/gtk+/3.24
PKG_HASH:=50f89f615092d4dd01bbd759719f8bd380e5f149f6fd78a94725e2de112377e2

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GNU Library General Public License v2 only
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/gtk+-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=glib2 glib2/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/gtk3
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=The GTK plus Toolkit (v3)
	DEPENDS:=+libx11 +libxau +libxext +libxmu +libxaw +libxpm +libtiff +zlib +libexpat +libpango +libxrandr +libxinerama +libxi +libxfixes +libxdamage +libepoxy +fontconfig +libcairo +atk +gdk-pixbuf +graphene +at-spi2-atk
	URL:=https://www.gtk.org/
endef

define Package/gtk3/description
	GTK is a multi-platform toolkit for creating graphical user interfaces.
endef

MESON_ARGS += \
	-Dgtk_doc=false \
	-Dman=false \
	-Dintrospection=false \
	-Ddemos=true \
	-Dexamples=false \
	-Dtests=false \
	-Dinstalled_tests=false

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/{gail-3.0,gtk-3.0} \
	  $(1)/usr/include/
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share \
	  $(1)/usr/
endef

define Package/gtk3/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,gtk3))
