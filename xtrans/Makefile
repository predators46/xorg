include $(TOPDIR)/rules.mk

PKG_NAME:=xtrans
PKG_VERSION:=1.5.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.x.org/releases/individual/lib/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=1ba4b703696bfddbf40bacf25bce4e3efb2a0088878f017a50e9884b0c8fb1bd

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=util-macros
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/xtrans
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X transport library
	URL:=http://xorg.freedesktop.org/
	BUILDONLY:=1
endef

define Package/xtrans/description
	xtrans is a library of code that is shared among various X packages to handle
	network protocol transport in a modular fashion, allowing a single place to add new transport types.
	It is used by the X server, libX11, libICE, the X font server, and related components.
endef

CONFIGURE_ARGS += \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib \
	  $(1)/usr/share


	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include \
	  $(1)/usr/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/pkgconfig \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/aclocal \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,xtrans))
