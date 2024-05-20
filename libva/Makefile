include $(TOPDIR)/rules.mk

PKG_NAME:=libva
PKG_VERSION:=2.21.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=https://github.com/intel/libva/releases/download/$(PKG_VERSION)
PKG_HASH:=9dc1a84373b656434e6a8f3ac7522bc1c959cc3434aea89d2c02092986d87016

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=COPYING

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/libva
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Video Acceleration (VA) API for Linux
	DEPENDS:=+libx11 +libxcb +libxfixes +libxext +libdrm +libwayland
	URL:=https://freedesktop.org/wiki/Software/vaapi
endef

define Package/libva/description
	VA-API is an open-source library and API specification, which provides access to graphics hardware acceleration capabilities for video processing.
	It consists of a main library and driver-specific acceleration backends for each supported hardware vendor.
endef

MESON_ARGS += \
	-Dwith_x11=yes \
	-Dwith_glx=no \
	-Dwith_wayland=no \
	-Denable_docs=false

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/va \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/libva/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libva))
