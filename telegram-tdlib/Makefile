include $(TOPDIR)/rules.mk

PKG_NAME:=telegram-tdlib
PKG_VERSION:=1.8.30
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/tdlib/td.git
PKG_SOURCE_VERSION:=fab354add5a257a8121a4a7f1ff6b1b9fa9a9073
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD 1-Clause License
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DEPENDS:=gperf/host
PKG_BUILD_DEPENDS:=gperf/host telegram-tdlib/host

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/telegram-tdlib
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Cross-platform library for building Telegram clients
	DEPENDS:=+libopenssl +libopenssl-devcrypto +libstdcpp +zlib
	URL:=https://github.com/tdlib/td
endef

define Package/telegram-tdlib/description
	TDLib (Telegram Database library) is a cross-platform library for building Telegram clients.
	It can be easily used from almost any programming language.
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	mkdir -p $(PKG_BUILD_DIR)/td/generate/auto/td/telegram
	mkdir -p $(PKG_BUILD_DIR)/td/generate/auto/td/mtproto
	mkdir -p $(PKG_BUILD_DIR)/tdutils/generate/auto
	mkdir -p $(STAGING_DIR)/usr/include/td/telegram
	mkdir -p $(STAGING_DIR)/usr/include/td/mtproto

	$(CP) \
	  $(HOST_BUILD_DIR)/td/generate/auto/td/telegram/{telegram_api.cpp,telegram_api.h,telegram_api.hpp,secret_api.cpp,secret_api.h,secret_api.hpp,td_api.cpp,td_api.h,td_api.hpp,td_api.h,td_api_json.h} \
	  $(PKG_BUILD_DIR)/td/generate/auto/td/telegram/

	$(CP) \
	  $(HOST_BUILD_DIR)/td/generate/auto/td/mtproto/{mtproto_api.cpp,mtproto_api.h,mtproto_api.hpp} \
	  $(PKG_BUILD_DIR)/td/generate/auto/td/mtproto/

	$(CP) \
	  $(HOST_BUILD_DIR)/tdutils/generate/auto/{extension_to_mime_type.cpp,mime_type_to_extension.cpp} \
	  $(PKG_BUILD_DIR)/tdutils/generate/auto/

	$(CP) \
	  $(HOST_BUILD_DIR)/td/generate/auto/td/telegram/{telegram_api.cpp,telegram_api.h,telegram_api.hpp,secret_api.cpp,secret_api.h,secret_api.hpp,td_api.cpp,td_api.h,td_api.hpp,td_api.h,td_api_json.h} \
	  $(STAGING_DIR)/usr/include/td/telegram/

	$(CP) \
	  $(HOST_BUILD_DIR)/td/generate/auto/td/mtproto/{mtproto_api.cpp,mtproto_api.h,mtproto_api.hpp} \
	  $(STAGING_DIR)/usr/include/td/mtproto/
endef

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

define Package/telegram-tdlib/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,telegram-tdlib))
