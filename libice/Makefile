include $(TOPDIR)/rules.mk

PKG_NAME:=libice
PKG_VERSION:=1.1.1
PKG_RELEASE:=1

PKG_SOURCE:=libICE-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/lib
PKG_HASH:=03e77afaf72942c7ac02ccebb19034e6e20f456dcf8dddadfeb572aa5ad3e451

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/libICE-$(PKG_VERSION)

PKG_BUILD_DEPENDS:=util-macros xorgproto xtrans
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libice
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X11 Inter-Client Exchange library
	URL:=http://xorg.freedesktop.org/
endef

define Package/libice/description
	libICE - Inter-Client Exchange Library
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr \
	--disable-docs \
	--without-xmlto \
	--without-xsltproc \
	--without-fop \

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

define Package/libice/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libice))
