include $(TOPDIR)/rules.mk

PKG_NAME:=xrdb
PKG_VERSION:=1.2.2
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.x.org/releases/individual/app/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=31f5fcab231b38f255b00b066cf7ea3b496df712c9eb2d0d50c670b63e5033f4

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/xrdb
	SECTION:=libs
	CATEGORY:=Libraries
	DEPENDS:=+libx11 +libxmu
	TITLE:=X server resource database utility
	URL:=http://xorg.freedesktop.org/
endef

define Package/xrdb/description
	xrdb - X server resource database utility
endef

CONFIGURE_ARGS += \
	--prefix=/usr

define Package/xrdb/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
endef

$(eval $(call BuildPackage,xrdb))
