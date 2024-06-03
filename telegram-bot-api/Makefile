include $(TOPDIR)/rules.mk

PKG_NAME:=telegram-bot-api
PKG_VERSION:=7.4
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/tdlib/telegram-bot-api.git
PKG_SOURCE_VERSION:=831968def2449efd9bbf630d8bd0296fa456db2d
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSL-1.0 license
PKG_LICENSE_FILES:=LICENSE_1_0.txt

CMAKE_BINARY_SUBDIR := build

HOST_BUILD_DEPENDS:=gperf/host
PKG_BUILD_DEPENDS:=gperf/host

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/telegram-bot-api
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Telegram Bot API server
	DEPENDS:=+libstdcpp +zlib +libopenssl
	URL:=https://github.com/tdlib/telegram-bot-api
endef

define Package/telegram-bot-api/description
	The Telegram Bot API provides an HTTP API for creating Telegram Bots.
endef

CMAKE_OPTIONS += \
	-DCMAKE_BUILD_TYPE=Release

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/td \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,cmake,*.so*,*.a} \
	  $(1)/usr/lib/
endef

define Package/telegram-bot-api/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,telegram-bot-api))