include $(TOPDIR)/rules.mk

PKG_NAME:=cairo
PKG_VERSION:=1.18.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://cairo.freedesktop.org/releases/
PKG_HASH:=243a0736b978a33dee29f9cca7521733b78a65b5418206fef7bd1c3d4cf10b64

PKG_MAINTAINER:=Daniel Golle <daniel@makrotopia.org>
PKG_LICENSE:=LGPL-2.1-or-later MPL-1.1
PKG_LICENSE_FILES:=COPYING COPYING-LGPL-2.1 COPYING-MPL-1.1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/libcairo
  SECTION:=libs
  CATEGORY:=Libraries
  SUBMENU:=Video
  TITLE:=cairo
  URL:=https://cairo.freedesktop.org/
  DEPENDS:=+libpng +libfreetype +fontconfig +pixman +glib2 +libjpeg-turbo +zlib +liblzo +libx11 +libxcb +libxrender +libxext +fontconfig
endef

define Package/libcairo/description
  Cairo is a 2D graphics library with support for multiple output devices.
endef

MESON_ARGS += \
	-Dtests=disabled \
	-Dgtk_doc=false

define Package/libcairo/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib
	$(INSTALL_DIR) $(1)/usr/lib/cairo
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/cairo/*.so $(1)/usr/lib/cairo
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/cairo
	$(CP) $(PKG_INSTALL_DIR)/usr/include/cairo/*.h $(1)/usr/include/cairo
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib
	$(INSTALL_DIR) $(1)/usr/lib/cairo
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/cairo/*.so $(1)/usr/lib/cairo
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig
endef

$(eval $(call BuildPackage,libcairo))
