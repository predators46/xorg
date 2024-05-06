include $(TOPDIR)/rules.mk

PKG_NAME:=libxfixes
PKG_VERSION:=6.0.1
PKG_RELEASE:=1

PKG_SOURCE:=libXfixes-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/lib
PKG_HASH:=b695f93cd2499421ab02d22744458e650ccc88c1d4c8130d60200213abc02d58

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/libXfixes-$(PKG_VERSION)

PKG_BUILD_DEPENDS:=util-macros xorgproto
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libxfixes
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X11 miscellaneous 'fixes' extension library
	DEPENDS:=+libx11
	URL:=http://xorg.freedesktop.org/
endef

define Package/libxfixes/description
	libXfixes - XFIXES Extension library
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/X11 \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/libxfixes/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libxfixes))
