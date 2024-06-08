include $(TOPDIR)/rules.mk

PKG_NAME:=xprop
PKG_VERSION:=1.2.7
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/app/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=4436e3148bb91a162406230d9f736a49ca8b50b74790015dc15d78d6ce8e825f

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/xprop
	SECTION:=xorg
	CATEGORY:=Xorg
	DEPENDS:=+libx11
	TITLE:=Property displayer for X
	URL:=http://xorg.freedesktop.org/
endef

define Package/xprop/description
	xprop is a command line tool to display and/or set window and font properties of an X server.
endef

define Package/xprop/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/xprop \
	  $(1)/usr/bin/
endef

$(eval $(call BuildPackage,xprop))
