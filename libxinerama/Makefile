include $(TOPDIR)/rules.mk

PKG_NAME:=libxinerama
PKG_VERSION:=1.1.5
PKG_RELEASE:=1

PKG_SOURCE:=libXinerama-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://www.x.org/releases/individual/lib/
PKG_HASH:=5094d1f0fcc1828cb1696d0d39d9e866ae32520c54d01f618f1a3c1e30c2085c

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/libXinerama-$(PKG_VERSION)

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libxinerama
	SECTION:=libs
	CATEGORY:=Libraries
	DEPENDS:=+libx11 +libxext
	TITLE:=X11 Xinerama extension library
	URL:=http://xorg.freedesktop.org/
endef

define Package/libxinerama/description
	Xlib API for Xinerama extension to X11 Protocol
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--enable-malloc0returnsnull \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/X11 \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/libxinerama/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libxinerama))
