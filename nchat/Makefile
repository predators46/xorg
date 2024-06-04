include $(TOPDIR)/rules.mk

PKG_NAME:=nchat
PKG_VERSION:=4.86
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/d99kris/nchat/archive/v$(PKG_VERSION)
PKG_HASH:=41a3b81af105b927cf69a92e3f4ce39a7d020ae0d7ae6399e69f860853e34991

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT license
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

HOST_BUILD_DEPENDS:=ncurses/host gperf/host
PKG_BUILD_DEPENDS:=ncurses/host gperf/host

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/nchat
	SECTION:=net
	CATEGORY:=Network
	TITLE:=Terminal-based Telegram / WhatsApp client for Linux and macOS
	DEPENDS:=+libncurses +libopenssl +libsqlite3 +file +zlib +libreadline +libstdcpp
	URL:=https://github.com/d99kris/nchat
endef

define Package/nchat/description
	nchat is a terminal-based chat client for Linux and macOS with support for Telegram and WhatsApp.
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	$(CP) \
	  ./files/lib/tgchat/ext/td/td/generate/auto/td \
	  $(PKG_BUILD_DIR)/lib/tgchat/ext/td/
	$(CP) \
	  ./files/lib/tgchat/ext/td/td/generate/auto \
	  $(PKG_BUILD_DIR)/lib/tgchat/ext/td/td/generate/
	$(CP) \
	  ./files/lib/tgchat/ext/td/tdutils/generate/auto \
	  $(PKG_BUILD_DIR)/lib/tgchat/ext/td/tdutils/generate/
endef

CMAKE_OPTIONS += \
	-DCMAKE_BUILD_TYPE=Release \
	-DHAS_DUMMY=ON \
	-DHAS_TELEGRAM=ON \
	-DHAS_WHATSAPP=OFF \
	-DHAS_DYNAMICLOAD=ON \
	-DHAS_MULTIPROTOCOL=ON \
	-DHAS_COREDUMP=ON

define Package/nchat/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/nchat \
	  $(1)/usr/bin/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/nchat \
	  $(1)/usr/share/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,nchat))
