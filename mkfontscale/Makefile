include $(TOPDIR)/rules.mk

PKG_NAME:=mkfontscale
PKG_VERSION:=1.2.3
PKG_RELEASE:=1

PKG_SOURCE_URL:=http://xorg.freedesktop.org/releases/individual/app/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=2921cdc344f1acee04bcd6ea1e29565c1308263006e134a9ee38cf9c9d6fe75e

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DEPENDS:=libfontenc/host freetype/host util-macros/host xorgproto/host
HOST_BUILD_PARALLEL:=1
PKG_HOST_ONLY:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/mkfontscale
	SECTION:=apps
	CATEGORY:=Applications
	TITLE:=Create an index of scalable font files for X
	URL:=http://xorg.freedesktop.org/
	BUILDONLY:=1
endef

define Package/mkfontscale/description
	mkfontscale creates the fonts.scale and fonts.dir index files used by the legacy X11 font system.
	It now includes the mkfontdir script previously distributed separately for compatibility with older X11 versions.
endef

$(eval $(call BuildPackage,mkfontscale))
$(eval $(call HostBuild))
