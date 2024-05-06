include $(TOPDIR)/rules.mk

PKG_NAME:=xsetroot
PKG_VERSION:=1.1.3
PKG_RELEASE:=1

PKG_SOURCE_URL:=http://xorg.freedesktop.org/releases/individual/app/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=6081b45a9eb4426e045d259d1e144b32417fb635e5b96aa90647365ac96638d1

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/xsetroot
	SECTION:=xorg
	CATEGORY:=Xorg
	DEPENDS:=+libx11 +libxcursor +xbitmaps +libxmu
	TITLE:=X.Org xsetroot application
	URL:=http://xorg.freedesktop.org/
endef

define Package/xsetroot/description
	Classic X utility to set your root window background to a given pattern or color
endef

define Package/xsetroot/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/xsetroot \
	  $(1)/usr/bin/
endef

$(eval $(call BuildPackage,xsetroot))
