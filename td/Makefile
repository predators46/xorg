include $(TOPDIR)/rules.mk

PKG_NAME:=td
PKG_VERSION:=1.8.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/tdlib/td/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

HOST_BUILD_DEPENDS:=gperf/host openssl zlib
PKG_BUILD_DEPENDS:=gperf/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/td
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Cross-platform library for building Telegram clients
  URL:=https://github.com/tdlib/td
  DEPENDS:=+libopenssl +libopenssl-devcrypto +libstdcpp +zlib
endef

define Package/td/description
TDLib (Telegram Database library) is a cross-platform library for building Telegram clients.
It can be easily used from almost any programming language.
endef

define Build/Compile
	+$(NINJA) -C $(CMAKE_BINARY_DIR)/td/generate
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include $(1)/usr
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib $(1)/usr
endef

define Package/td/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libtdjson.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,td))
$(eval $(call HostBuild))
