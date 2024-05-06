include $(TOPDIR)/rules.mk

PKG_NAME:=libfontenc
PKG_VERSION:=1.1.8
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.x.org/releases/individual/lib/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=7b02c3d405236e0d86806b1de9d6868fe60c313628b38350b032914aa4fd14c6

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=util-macros xorgproto font-util
HOST_BUILD_DEPENDS:=xorgproto/host util-macros/host font-util/host

HOST_BUILD_PARALLEL:=1
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/libfontenc
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X11 font encoding library
	DEPENDS:=+zlib
	URL:=http://xorg.freedesktop.org/
endef

define Package/libfontenc/description
	Libfontenc is a library which helps font libraries portably determine
	and deal with different encodings of fonts.
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--disable-static \
	--enable-shared \
	--with-fontrootdir=/usr/share/fonts/X11 \
	--with-encodingsdir=/usr/share/fonts/encodings

HOST_CONFIGURE_ARGS += \
	--enable-static \
	--disable-shared

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

define Package/libfontenc/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libfontenc))
$(eval $(call HostBuild))
