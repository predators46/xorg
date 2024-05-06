include $(TOPDIR)/rules.mk

PKG_NAME:=encodings
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.x.org/releases/individual/font/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=9ff13c621756cfa12e95f32ba48a5b23839e8f577d0048beda66c67dab4de975

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LICENSE
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=util-macros mkfontscale/host font-util
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/encodings
	SECTION:=font
	CATEGORY:=Font
	TITLE:=X.org font encoding files
	URL:=http://xorg.freedesktop.org/
endef

define Package/encodings/description
	Font encoding tables for libfontenc
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr \
	--with-fontrootdir=/usr/share/fonts/X11 \
	--with-encodingsdir=/usr/share/fonts/encodings

define Package/encodings/install
	$(INSTALL_DIR) \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/fonts \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,encodings))
