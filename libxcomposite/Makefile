include $(TOPDIR)/rules.mk

PKG_NAME:=libxcomposite
PKG_VERSION:=0.4.6
PKG_RELEASE:=1

PKG_SOURCE:=libXcomposite-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/lib
PKG_HASH:=fe40bcf0ae1a09070eba24088a5eb9810efe57453779ec1e20a55080c6dc2c87

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/libXcomposite-$(PKG_VERSION)

PKG_BUILD_DEPENDS:=xorgproto util-macros
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libxcomposite
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X11 Composite extension library
	DEPENDS:=+libxfixes +libxext +libx11
	URL:=http://xorg.freedesktop.org/
endef

define Package/libxcomposite/description
	libXcomposite - client library for the Composite extension to the X11 protocol
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr \
	--without-xmlto

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

define Package/libxcomposite/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libxcomposite))
