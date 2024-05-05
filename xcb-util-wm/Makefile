include $(TOPDIR)/rules.mk

PKG_NAME:=xcb-util-wm
PKG_VERSION:=0.4.2
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://xcb.freedesktop.org/dist/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=62c34e21d06264687faea7edbf63632c9f04d55e72114aa4a57bb95e4f888a0b

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=X11 License Distribution Modification Variant
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=util-macros xorgproto
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/xcb-util-wm
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X C-language Binding - helpers for ICCCM and EWMH
	DEPENDS:=+libxcb
	URL:=http://xorg.freedesktop.org/
endef

define Package/xcb-util-wm/description
	Utility libraries for XC Binding - client and window-manager helpers for ICCCM
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr \
	--disable-devel-docs \
	--without-doxygen

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/xcb \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/xcb-util-wm/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,xcb-util-wm))
