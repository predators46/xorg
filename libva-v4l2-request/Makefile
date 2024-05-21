include $(TOPDIR)/rules.mk

PKG_NAME:=libva-v4l2-request
PKG_VERSION:=2019.03
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-release-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/bootlin/libva-v4l2-request/archive/release-$(PKG_VERSION)
PKG_HASH:=16332f8f7257004652ff7afe8ecabd6a6a3f803e9ae1f4d886bbe8edd5f2fed6

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/libva-v4l2-request-release-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/libva-v4l2-request
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=LibVA implementation for the Linux Video4Linux2 Request API
	DEPENDS:= +libdrm +libva +libva-utils
	URL:=https://github.com/bootlin/libva-v4l2-request
endef

define Package/libva-v4l2-request/description
	This libVA backend is designed to work with the Linux Video4Linux2 Request API that is used by a number of video codecs drivers, including the Video Engine found in most Allwinner SoCs.
endef

define Package/libva-v4l2-request/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
endef

$(eval $(call BuildPackage,libva-v4l2-request))
