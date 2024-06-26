include $(TOPDIR)/rules.mk

PKG_NAME:=libxext
PKG_VERSION:=1.3.6
PKG_RELEASE:=1

PKG_SOURCE:=libXext-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/lib
PKG_HASH:=edb59fa23994e405fdc5b400afdf5820ae6160b94f35e3dc3da4457a16e89753

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/libXext-$(PKG_VERSION)

PKG_BUILD_DEPENDS:=util-macros xorgproto
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libxext
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X11 miscellaneous extensions library
	DEPENDS:=+libx11
	URL:=http://xorg.freedesktop.org/
endef

define Package/libxext/description
	libXext - library for common extensions to the X11 protocol
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr \
	--without-fop \
	--without-xmlto \
	--enable-malloc0returnsnull

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

define Package/libxext/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libxext))
