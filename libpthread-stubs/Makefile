include $(TOPDIR)/rules.mk

PKG_NAME:=libpthread-stubs
PKG_VERSION:=0.5
PKG_RELEASE:=1

PKG_SOURCE_URL:=http://xcb.freedesktop.org/dist/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=59da566decceba7c2a7970a4a03b48d9905f1262ff94410a649224e33d2442bc

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=X11
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libpthread-stubs
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Pthread functions stubs for platforms missing them
	URL:=http://xorg.freedesktop.org/
	BUILDONLY:=1
endef

define Package/libpthread-stubs/description
	Currently the project provides only a pkg-config [.pc] file, pthread-stubs.pc.
	The latter contains the Cflags/Libs flags applicable to programs/libraries that use only lightweight pthread API.
	See the next sections for the reasoning and implementation details.
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/pkgconfig \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libpthread-stubs))
