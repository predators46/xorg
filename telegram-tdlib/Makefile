include $(TOPDIR)/rules.mk

PKG_NAME:=telegram-tdlib
PKG_VERSION:=1.8.0
PKG_RELEASE:=1

PKG_SOURCE:=td-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/tdlib/td/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/td-$(PKG_VERSION)
PKG_BUILD_DIR:=$(BUILD_DIR)/td-$(PKG_VERSION)

CMAKE_BINARY_SUBDIR := build

HOST_BUILD_DEPENDS:=gperf/host
PKG_BUILD_DEPENDS:=gperf/host telegram-tdlib/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/telegram-tdlib
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Cross-platform library for building Telegram clients
  URL:=https://github.com/tdlib/td
  DEPENDS:=+libopenssl +libopenssl-devcrypto +libstdcpp +zlib
endef

define Package/telegram-tdlib/description
TDLib (Telegram Database library) is a cross-platform library for building Telegram clients.
It can be easily used from almost any programming language.
endef

CMAKE_HOST_OPTIONS += \
	-DCMAKE_BUILD_TYPE=Release \
	-DBUILD_SHARED_LIBS=OFF

CMAKE_OPTIONS += \
	-DCMAKE_BUILD_TYPE=Release \
	-DBUILD_SHARED_LIBS=ON

define Build/Prepare
	$(call Build/Prepare/Default)
	$(CP) \
	  $(HOST_BUILD_DIR)/td/generate/auto \
	  $(PKG_BUILD_DIR)/td/generate/
	$(CP) \
	  $(HOST_BUILD_DIR)/tdutils/generate/auto \
	  $(PKG_BUILD_DIR)/tdutils/generate/
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

define Host/Install
	$(call Host/Install/Default)
	$(INSTALL_DIR) \
	  $(STAGING_DIR)/usr/include

	$(CP) \
	  $(HOST_BUILD_DIR)/td/generate/auto/td \
	  $(STAGING_DIR)/usr/include/
endef

define Package/telegram-tdlib/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,telegram-tdlib))
$(eval $(call HostBuild))
