include $(TOPDIR)/rules.mk

PKG_NAME:=libxshmfence
PKG_VERSION:=1.3.2
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.x.org/releases/individual/lib/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=870df257bc40b126d91b5a8f1da6ca8a524555268c50b59c0acd1a27f361606f

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LICENSE
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=xorgproto util-macros

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libxshmfence
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X11 shared memory fences
	DEPENDS:=+libx11
	URL:=http://xorg.freedesktop.org/
endef

define Package/libxshmfence/description
	libxshmfence - Shared memory 'SyncFence' synchronization primitive
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr \
	--disable-static \
	--enable-futex

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

define Package/libxshmfence/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libxshmfence))
