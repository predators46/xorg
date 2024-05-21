include $(TOPDIR)/rules.mk

PKG_NAME:=libmd
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://archive.hadrons.org/software/libmd/
PKG_HASH:=1bd6aa42275313af3141c7cf2e5b964e8b1fd488025caf2f971f43b00776b332

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause AND BSD-2-Clause AND ISC AND Beerware AND Public Domain
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libmd
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Message Digest functions from BSD systems
	DEPENDS:=+zlib +libfreetype +libfontenc
	URL:=http://xorg.freedesktop.org/
endef

define Package/libmd/description
	libXfont - X font handling library for server & utilities
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/*.h \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/libmd/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libmd))
