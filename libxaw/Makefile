include $(TOPDIR)/rules.mk

PKG_NAME:=libxaw
PKG_VERSION:=1.0.16
PKG_RELEASE:=1

PKG_SOURCE:=libXaw-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/lib
PKG_HASH:=731d572b54c708f81e197a6afa8016918e2e06dfd3025e066ca642a5b8c39c8f

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/libXaw-$(PKG_VERSION)

PKG_BUILD_DEPENDS:=util-macros xorgproto
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libxaw
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X Athena Widget Set
	DEPENDS:=+libx11 +libxext +libxmu +libxpm +libxt
	URL:=http://xorg.freedesktop.org/
endef

define Package/libxaw/description
	X Athena Widget Set, based on the X Toolkit Intrinsics (Xt) Library
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--enable-malloc0returnsnull \
	--prefix=/usr \
	--disable-specs \
	--without-xmlto \
	--without-fop \
	--without-xsltproc

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

define Package/libxaw/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libxaw))
