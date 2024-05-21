include $(TOPDIR)/rules.mk

PKG_NAME:=libva-v4l2-request
PKG_VERSION:=2019.03
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/bootlin/libva-v4l2-request.git
PKG_SOURCE_VERSION:=a3c2476de19e6635458273ceeaeceff124fabd63
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License LGPL-2.1 license
PKG_LICENSE_FILES:=COPYING COPYING.LGPL COPYING.MIT

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/libva-v4l2-request
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=LibVA implementation for the Linux Video4Linux2 Request API
	DEPENDS:= +libdrm +libva
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
