include $(TOPDIR)/rules.mk

PKG_NAME:=xset
PKG_VERSION:=1.2.5
PKG_RELEASE:=1

PKG_SOURCE_URL:=http://xorg.freedesktop.org/releases/individual/app/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=9f692d55635b3862cd63633b1222a87680ec283c7a8e8ed6dd698a3147f75e2f

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/xset
	SECTION:=xorg
	CATEGORY:=Xorg
	DEPENDS:=+libx11 +libxext +libxmu
	TITLE:=X.Org xset application
	URL:=http://xorg.freedesktop.org/
endef

define Package/xset/description
	xset - user preference utility for X
endef

define Package/xset/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/xset \
	  $(1)/usr/bin/
endef

$(eval $(call BuildPackage,xset))
