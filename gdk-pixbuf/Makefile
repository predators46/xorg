include $(TOPDIR)/rules.mk

PKG_NAME:=gdk-pixbuf
PKG_VERSION:=2.42.12
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://download.gnome.org/sources/$(PKG_NAME)/2.42
PKG_HASH:=b9505b3445b9a7e48ced34760c3bcb73e966df3ac94c95a148cb669ab748e3c7

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GNU LGPLv2.1
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DEPENDS:=glib2/host libtiff/host shared-mime-info/host
PKG_BUILD_DEPENDS:=glib2/host
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/gdk-pixbuf
	SECTION:=xorg
	CATEGORY:=Xorg
	TITLE:=GTK image loading library
	DEPENDS:=+libtiff +libjpeg-turbo +libpng +glib2 +shared-mime-info
	URL:=https://www.gtk.org/
endef

define Package/gdk-pixbuf/description
	GdkPixbuf is a library that loads image data in various formats and stores
	it as linear buffers in memory. The buffers can then be scaled, composited, modified, saved, or rendered.
endef

MESON_HOST_ARGS += \
	-Dpng=disabled \
	-Djpeg=disabled \
	-Dgif=disabled \
	-Dgtk_doc=false \
	-Ddocs=false \
	-Dintrospection=disabled \
	-Dman=false \
	-Dtests=false \
	-Dinstalled_tests=false

MESON_ARGS += \
	-Dgtk_doc=false \
	-Ddocs=false \
	-Dintrospection=disabled \
	-Dman=false \
	-Dtests=false \
	-Dinstalled_tests=false

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
	$(foreach BIN,gdk_pixbuf_csource gdk_pixbuf_pixdata gdk_pixbuf_query_loaders,
		$(SED) 's/^$(BIN)=$$$${bindir}\/\(.*\)/$(BIN)=$$$${prefix_hostpkg}\/bin\/\1/' $(1)/usr/lib/pkgconfig/gdk-pixbuf-2.0.pc)
endef

define Package/gdk-pixbuf/install
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

$(eval $(call HostBuild))
$(eval $(call BuildPackage,gdk-pixbuf))
