include $(TOPDIR)/rules.mk

PKG_NAME:=librsvg
PKG_VERSION:=2.58.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://download.gnome.org/sources/librsvg/2.58/
PKG_HASH:=3728596290a8576d305d06ec8afdf473516feee9dff22e03235eac433d56824e

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GNU LGPLv2.1
PKG_LICENSE_FILES:=COPYING.LIB

PKG_BUILD_DEPENDS:=glib2/host rust/host
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/rust/rust-values.mk

define Package/librsvg
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=SAX-based renderer for SVG files into a GdkPixbuf
	DEPENDS:=+libcairo +libfreetype +gdk-pixbuf +glib2 +harfbuzz +libxml2 +libpango +dejavu-fonts-ttf-DejaVuMathTeXGyre +dejavu-fonts-ttf-DejaVuSans-BoldOblique +dejavu-fonts-ttf-DejaVuSans-Bold +dejavu-fonts-ttf-DejaVuSans-ExtraLight +dejavu-fonts-ttf-DejaVuSans-Oblique +dejavu-fonts-ttf-DejaVuSansCondensed-BoldOblique +dejavu-fonts-ttf-DejaVuSansCondensed-Bold +dejavu-fonts-ttf-DejaVuSansCondensed-Oblique +dejavu-fonts-ttf-DejaVuSansCondensed +dejavu-fonts-ttf-DejaVuSansMono-BoldOblique +dejavu-fonts-ttf-DejaVuSansMono-Bold +dejavu-fonts-ttf-DejaVuSansMono-Oblique +dejavu-fonts-ttf-DejaVuSansMono +dejavu-fonts-ttf-DejaVuSans +dejavu-fonts-ttf-DejaVuSerif-BoldItalic +dejavu-fonts-ttf-DejaVuSerif-Bold +dejavu-fonts-ttf-DejaVuSerif-Italic +dejavu-fonts-ttf-DejaVuSerifCondensed-BoldItalic +dejavu-fonts-ttf-DejaVuSerifCondensed-Bold +dejavu-fonts-ttf-DejaVuSerifCondensed-Italic +dejavu-fonts-ttf-DejaVuSerifCondensed +dejavu-fonts-ttf-DejaVuSerif
	URL:=https://gitlab.gnome.org/GNOME/librsvg
endef

define Package/librsvg/description
	This is librsvg - A small library to render Scalable Vector Graphics (SVG), associated with the GNOME Project.
	It renders SVG files to Cairo surfaces.  Cairo is the 2D, antialiased drawing library that GNOME uses to draw things to the screen or to generate output for printing.
endef

CONFIGURE_ARGS += \
	--enable-shared \
	--disable-static \
	--disable-gtk-doc \
	--disable-installed-tests \
	--disable-always-build-tests \
	--disable-pixbuf-loader \
	--disable-introspection \
	--disable-vala

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
