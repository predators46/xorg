include $(TOPDIR)/rules.mk

PKG_NAME:=libvdpau
PKG_VERSION:=1.5
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://gitlab.freedesktop.org/vdpau/libvdpau/-/archive/$(PKG_VERSION)/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_HASH:=66490802f30426d30ff9e8af35263bbbbaa23b52d0a2d797d06959c3d19638fd

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=xorgproto

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/libvdpau
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Hardware-accelerated video playback library
	DEPENDS:=+libx11 +libxext
	URL:=https://cgit.freedesktop.org/~aplattner/libvdpau
endef

define Package/libvdpau/description
	Hardware-accelerated video playback library (development files)
endef

MESON_ARGS += \
	-Ddocumentation=false \
	-Ddri2=true

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/vdpau \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/libvdpau/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libvdpau))
