include $(TOPDIR)/rules.mk

PKG_NAME:=libxcb
PKG_VERSION:=1.16.1
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://xcb.freedesktop.org/dist/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=f24d187154c8e027b358fc7cb6588e35e33e6a92f11c668fe77396a7ae66e311

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=xcb-proto
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libxcb
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X11 client-side library
	DEPENDS:=+libxau +libxdmcp
	URL:=http://xorg.freedesktop.org/
endef

define Package/libxcb/description
	C interface to the X Window System protocol, which replaces the traditional Xlib interface.
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr \
	--enable-xkb \
	--enable-xinput \
	--without-doxygen \
	--disable-devel-docs

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/xcb \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/libxcb/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libxcb))
