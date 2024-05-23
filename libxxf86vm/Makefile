include $(TOPDIR)/rules.mk

PKG_NAME:=libxxf86vm
PKG_VERSION:=1.1.5
PKG_RELEASE:=1

PKG_SOURCE:=libXxf86vm-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/lib/
PKG_HASH:=247fef48b3e0e7e67129e41f1e789e8d006ba47dba1c0cdce684b9b703f888e7

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=X11 License Distribution Modification Variant
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/libXxf86vm-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=xorgproto util-macros

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libXxf86vm
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Xlib-based library for the XFree86-VidMode X extension
	DEPENDS:=+libx11 +libxext
	URL:=https://gitlab.freedesktop.org/xorg/lib/libxxf86vm
endef

define Package/libXxf86vm/description
	libXxf86vm - Extension library for the XFree86-VidMode X extension
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr \
	--enable-malloc0returnsnull

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

define Package/libXxf86vm/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libXxf86vm))
