include $(TOPDIR)/rules.mk

PKG_NAME:=librsvg
PKG_VERSION:=2.58.91
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://download.gnome.org/sources/librsvg/2.58/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GNU LGPLv2.1
PKG_LICENSE_FILES:=COPYING.LIB

PKG_BUILD_DEPENDS:=glib2/host rust/host vala/host dejavu-fonts-ttf
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/rust/rust-package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/librsvg
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=SAX-based renderer for SVG files into a GdkPixbuf
	DEPENDS:=$(RUST_ARCH_DEPENDS) +libcairo +libfreetype +gdk-pixbuf +glib2 +harfbuzz +libxml2 +libpango
	URL:=https://gitlab.gnome.org/GNOME/librsvg
endef

define Package/librsvg/description
	This is librsvg - A small library to render Scalable Vector Graphics (SVG), associated with the GNOME Project.
	It renders SVG files to Cairo surfaces.  Cairo is the 2D, antialiased drawing library that GNOME uses to draw things to the screen or to generate output for printing.
endef

MESON_ARGS += \
	-Dintrospection=disabled \
	-Ddocs=disabled \
	-Dtests=disabled

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/librsvg-2.0 \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{gdk-pixbuf-2.0,girepository-1.0,pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/librsvg/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/rsvg-convert \
	  $(1)/usr/bin/
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{gdk-pixbuf-2.0,girepository-1.0,pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,librsvg))
