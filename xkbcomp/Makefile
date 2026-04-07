include $(TOPDIR)/rules.mk

PKG_NAME:=xkbcomp
PKG_VERSION:=1.5.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.x.org/releases/individual/app/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LICENSE
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=util-macros
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/xkbcomp
	SECTION:=apps
	CATEGORY:=Applications
	TITLE:=XKBD keymap compiler
	DEPENDS:=+libx11 +libxkbfile
	URL:=http://xorg.freedesktop.org/
endef

define Package/xkbcomp/description
	XKB keyboard description compiler
endef

CONFIGURE_ARGS += \
	--prefix=/usr 

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/pkgconfig \
	  $(1)/usr/lib/
endef

define Package/xkbcomp/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/xkbcomp \
	  $(1)/usr/bin/
endef

$(eval $(call BuildPackage,xkbcomp))
