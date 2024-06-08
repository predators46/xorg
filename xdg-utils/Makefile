include $(TOPDIR)/rules.mk

PKG_NAME:=xdg-utils
PKG_VERSION:=v1.2.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.freedesktop.org/xdg/xdg-utils/-/archive/$(PKG_VERSION)
PKG_HASH:=f6b648c064464c2636884c05746e80428110a576f8daacf46ef2e554dcfdae75

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=libxml2/host

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/xdg-utils
	SECTION:=xorg
	CATEGORY:=Xorg
	DEPENDS:=+file +xprop +xset
	TITLE:=Basic desktop integration functions
	URL:=http://xorg.freedesktop.org/
endef

define Package/xdg-utils/description
	The xdg-utils package is a set of scripts that provide basic desktop integration functions for any Free Desktop on Linux, the BSDs and even partially on MacOS and WSL.
endef

define Package/xdg-utils/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/xdg-* \
	  $(1)/usr/bin/
endef

$(eval $(call BuildPackage,xdg-utils))
