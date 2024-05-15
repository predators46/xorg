include $(TOPDIR)/rules.mk

PKG_NAME:=lcms2
PKG_VERSION:=2.16
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=@SF/lcms
PKG_HASH:=d873d34ad8b9b4cea010631f1a6228d2087475e4dc5e763eb81acc23d9d45a51

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT license
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/lcms2
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Little CMS color engine
	DEPENDS:=+libtiff +libjpeg-turbo +zlib
	URL:=https://www.littlecms.com/
endef

define Package/lcms2/description
	A free, open source, CMM engine. It provides fast transforms between ICC profiles.
endef

MESON_ARGS += \
	-Djpeg=enabled \
	-Dtiff=enabled \
	-Dutils=true \
	-Dfastfloat=true \
	-Dthreaded=true

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/* \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/lcms2/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,lcms2))
