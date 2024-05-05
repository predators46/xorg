include $(TOPDIR)/rules.mk

PKG_NAME:=xcb-util-errors
PKG_VERSION:=1.0.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/lib
PKG_HASH:=5628c87b984259ad927bacd8a42958319c36bdf4b065887803c9d820fb80f357

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=X11 License Distribution Modification Variant
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=util-macros xorgproto

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/xcb-util-errors
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=XCB errors library
	DEPENDS:=+libxcb
	URL:=http://xorg.freedesktop.org/
endef

define Package/xcb-util-errors/description
	XCB utility library that gives human readable names to error, event, & request codes.
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--disable-static \
	--prefix=/usr \
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

define Package/xcb-util-errors/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,xcb-util-errors))
