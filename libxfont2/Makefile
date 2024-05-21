include $(TOPDIR)/rules.mk

PKG_NAME:=libxfont2
PKG_VERSION:=2.0.6
PKG_RELEASE:=1

PKG_SOURCE:=libXfont2-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://www.x.org/releases/individual/lib/
PKG_HASH:=74ca20017eb0fb3f56d8d5e60685f560fc85e5ff3d84c61c4cb891e40c27aef4

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-4-Clause (University of California-Specific)
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=xtrans xorgproto util-macros

PKG_BUILD_DIR:=$(BUILD_DIR)/libXfont2-$(PKG_VERSION)
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libxfont2
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X.Org X11 libXfont2 runtime library
	DEPENDS:=+zlib +libfreetype +libfontenc
	URL:=http://xorg.freedesktop.org/
endef

define Package/libxfont2/description
	libXfont - X font handling library for server & utilities
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr \
	--disable-devel-docs \
	--without-fop \
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

define Package/libxfont2/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libxfont2))
