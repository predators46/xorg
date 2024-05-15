include $(TOPDIR)/rules.mk

PKG_NAME:=libxdamage
PKG_VERSION:=1.1.6
PKG_RELEASE:=1

PKG_SOURCE:=libXdamage-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://www.x.org/releases/individual/lib/
PKG_HASH:=52733c1f5262fca35f64e7d5060c6fcd81a880ba8e1e65c9621cf0727afb5d11

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LICENSE
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/libXdamage-$(PKG_VERSION)
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libxdamage
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X11 damaged region extension library
	DEPENDS:=+libx11 +libxfixes
	URL:=http://xorg.freedesktop.org/
endef

define Package/libxdamage/description
	libXdamage - X Damage Extension library
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr

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

define Package/libxdamage/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libxdamage))
