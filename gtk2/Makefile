include $(TOPDIR)/rules.mk

PKG_NAME:=gtk2
PKG_VERSION:=2.24.33
PKG_RELEASE:=1

PKG_SOURCE:=gtk+-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://download.gnome.org/sources/gtk+/2.24/
PKG_HASH:=ac2ac757f5942d318a311a54b0c80b5ef295f299c2a73c632f6bfb1ff49cc6da

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GNU Library General Public License v2 only
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/gtk+-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=glib2 glib2/host libxml2/host

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/gtk2
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=The GTK plus Toolkit (v2)
	DEPENDS:=+libx11 +libxau +libxext +libxmu +libxaw +libxpm +libtiff +zlib +libexpat +libpango +libxrandr +libxinerama +libxi +libxfixes +libxdamage +fontconfig +libcairo +atk +gdk-pixbuf +at-spi2-atk +shared-mime-info +libcups
	URL:=https://www.gtk.org/
endef

define Package/gtk2/description
	GTK is a multi-platform toolkit for creating graphical user interfaces.
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr \
	--disable-papi \
	--disable-glibtest\
	--with-xinput=yes \
	--without-libjasper \
	--with-included-loaders=png \
	--with-gdktarget=x11 \
	--disable-test-print-backend \
	--disable-introspection \
	--disable-gtk-doc-html

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/* \
	  $(1)/usr/include/
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/gtk-2.0/include/* \
	  $(1)/usr/include/
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/aclocal \
	  $(1)/usr/share/
endef

define Package/gtk2/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/themes \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,gtk2))
