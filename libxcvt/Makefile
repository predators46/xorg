include $(TOPDIR)/rules.mk

PKG_NAME:=libxcvt
PKG_VERSION:=0.1.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://www.x.org/releases/individual/lib/
PKG_HASH:=0561690544796e25cfbd71806ba1b0d797ffe464e9796411123e79450f71db38

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT License
PKG_LICENSE_FILES:=COPYING

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/libxcvt
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=xorg xcvt library and cvt program
	URL:=https://gitlab.freedesktop.org/xorg/lib/libxcvt
endef

define Package/libxcvt/description
	libxcvt is a library providing a standalone version of the X server implementation of the VESA CVT standard timing modelines generator.
	libxcvt also provides a standalone version of the command line tool cvt copied from the Xorg implementation and is meant to be a direct replacement to the version provided by the Xorg server.
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/libxcvt \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/libxcvt/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/cvt \
	  $(1)/usr/bin/
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libxcvt))
