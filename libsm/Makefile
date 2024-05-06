include $(TOPDIR)/rules.mk

PKG_NAME:=libsm
PKG_VERSION:=1.2.4
PKG_RELEASE:=1

PKG_SOURCE:=libSM-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/lib
PKG_HASH:=fdcbe51e4d1276b1183da77a8a4e74a137ca203e0bcfb20972dd5f3347e97b84

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/libSM-$(PKG_VERSION)

PKG_BUILD_DEPENDS:=util-macros xorgproto xtrans
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libsm
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X11 Session Management library
	DEPENDS:=+libice +libuuid
	URL:=http://xorg.freedesktop.org/
endef

define Package/libsm/description
	libSM - X Session Management Library
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr \
	--disable-docs \
	--without-xmlto \
	--without-xsltproc \
	--without-fop

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

define Package/libsm/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libsm))
