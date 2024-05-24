include $(TOPDIR)/rules.mk

PKG_NAME:=fluxbox
PKG_VERSION:=1.3.7
PKG_RELEASE:=1

PKG_SOURCE_URL:=@SF/fluxbox
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=fc8c75fe94c54ed5a5dd3fd4a752109f8949d6df67a48e5b11a261403c382ec0

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=xorgproto
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/fluxbox
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A lightweight and highly-configurable window manager
	DEPENDS:=+libx11 +libxinerama +libxpm +libxrandr +libxrender +libxrandr +libfreetype +libxft +libstdcpp +fontconfig +imlib2 +fribidi
	URL:=http://www.fluxbox.org
endef

define Package/fluxbox/description
	Fluxbox is a windowmanager for X that was based on the Blackbox 0.61.1 code.
	It is very light on resources and easy to handle but yet full of features to make an easy,
	and extremely fast, desktop experience. It is built using C++ and licensed under the MIT-License
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr \
	--enable-imlib2

define Package/fluxbox/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share \
	  $(1)/usr/
endef

$(eval $(call BuildPackage,fluxbox))
