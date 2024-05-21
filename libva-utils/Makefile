include $(TOPDIR)/rules.mk

PKG_NAME:=libva-utils
PKG_VERSION:=2.21.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/intel/libva-utils/archive/$(PKG_VERSION)
PKG_HASH:=15ca12bd11c7001c04af5079512754fea6ba8d79151b9f07908c99b27622714e

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=COPYING

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/libva-utils
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Intel VA-API Media Applications and Scripts for libva
	DEPENDS:= +libstdcpp +libx11 +libxcb +libxfixes +libxext +libdrm +libwayland +libva
	URL:=https://freedesktop.org/wiki/Software/vaapi
endef

define Package/libva-utils/description
	VA-API is an open-source library and API specification, which provides access to graphics hardware acceleration capabilities for video processing.
	It consists of a main library and driver-specific acceleration backends for each supported hardware vendor.
endef

MESON_ARGS += \
	-Ddrm=true \
	-Dx11=true \
	-Dwayland=true \
	-Dtests=false

define Package/libva-utils/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
endef

$(eval $(call BuildPackage,libva-utils))
