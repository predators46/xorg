include $(TOPDIR)/rules.mk

PKG_NAME:=xcb-util-renderutil
PKG_VERSION:=0.3.10
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://xcb.freedesktop.org/dist/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=3e15d4f0e22d8ddbfbb9f5d77db43eacd7a304029bf25a6166cc63caa96d04ba

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=X11 License Distribution Modification Variant
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=util-macros xorgproto

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/xcb-util-renderutil
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=XCB convenience functions for the Render extension.
	DEPENDS:=+libxcb
	URL:=http://xorg.freedesktop.org/
endef

define Package/xcb-util-renderutil/description
	Utility libraries for XC Binding - Convenience functions for the Render extension
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

define Package/xcb-util-renderutil/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,xcb-util-renderutil))
