include $(TOPDIR)/rules.mk

PKG_NAME:=xcb-util-image
PKG_VERSION:=0.4.1
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://xcb.freedesktop.org/dist/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=ccad8ee5dadb1271fd4727ad14d9bd77a64e505608766c4e98267d9aede40d3d

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=X11 License Distribution Modification Variant
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=util-macros xorgproto

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/xcb-util-image
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X C-language Binding - port of Xlib XImage and XShmImage
	DEPENDS:=+libxcb +xcb-util
	URL:=http://xorg.freedesktop.org/
endef

define Package/xcb-util-image/description
	Utility libraries for XC Binding - Port of Xlib's XImage and XShmImage functions
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

define Package/xcb-util-image/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,xcb-util-image))
