include $(TOPDIR)/rules.mk

PKG_NAME:=aspell
PKG_VERSION:=0.60.8.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://ftp.gnu.org/gnu/aspell/
PKG_HASH:=d6da12b34d42d457fa604e435ad484a74b2effcd120ff40acd6bb3fb2887d21b

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1 license
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk

define Package/aspell
	SECTION:=net
	CATEGORY:=Network
	TITLE:=This is the Git repository for GNU Aspell
	DEPENDS:=+libncurses +libintl-full +libstdcpp
	URL:=https://ftp.gnu.org/gnu/aspell
endef

define Package/aspell/description
	A spell checker designed to eventually replace Ispell
endef

CONFIGURE_ARGS += \
	--prefix=/usr \
	--sysconfdir=/etc

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/{aspell.h,pspell} \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{aspell,aspell-0.60,*.so*} \
	  $(1)/usr/lib/
endef

define Package/aspell/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{aspell,aspell-0.60,*.so*} \
	  $(1)/usr/lib/

$(eval $(call BuildPackage,aspell))