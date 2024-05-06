include $(TOPDIR)/rules.mk

PKG_NAME:=libx11
PKG_VERSION:=1.8.9
PKG_RELEASE:=1

PKG_SOURCE:=libX11-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/lib
PKG_HASH:=779d8f111d144ef93e2daa5f23a762ce9555affc99592844e71c4243d3bd3262

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD 1-Clause License
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/libX11-$(PKG_VERSION)

PKG_BUILD_DEPENDS:=xtrans xorgproto util-macros
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libx11
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X11 client-side library
	DEPENDS:=+libxcb
	URL:=http://xorg.freedesktop.org/
endef

define Package/libx11/description
	libX11 - Core X11 protocol client library
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_VARS += \
	LDFLAGS_FOR_BUILD="$(HOST_LDFLAGS)" \
	CPPFLAGS_FOR_BUILD="$(HOST_CPPFLAGS)" \
	CFLAGS_FOR_BUILD="$(HOST_CFLAGS)" \
	CC_FOR_BUILD="$(HOSTCC)"

CONFIGURE_ARGS += \
	--prefix=/usr \
	--enable-malloc0returnsnull \
	--without-xmlto \
	--without-xsltproc

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/X11 \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/X11 \
	  $(1)/usr/share/
endef

define Package/libx11/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libx11))
