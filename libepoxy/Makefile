include $(TOPDIR)/rules.mk

PKG_NAME:=libepoxy
PKG_VERSION:=1.5.10
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/anholt/libepoxy/archive/$(PKG_VERSION)
PKG_HASH:=a7ced37f4102b745ac86d6a70a9da399cc139ff168ba6b8002b4d8d43c900c15

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=COPYING

#PKG_BUILD_DEPENDS:=mesa

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/libepoxy
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Direct Rendering Manager runtime library
	DEPENDS:=+libx11
	URL:=https://github.com/anholt/libepoxy
endef

define Package/libepoxy/description
	Epoxy is a library for handling OpenGL function pointer management for you
endef

MESON_ARGS += \
	-Ddocs=false \
	-Dglx=true \
	-Degl=true \
	-Dx11=true \
	-Dtests=false

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/epoxy \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/libepoxy/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libepoxy))
