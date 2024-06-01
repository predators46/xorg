include $(TOPDIR)/rules.mk

PKG_NAME:=nchat
PKG_VERSION:=4.50
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/d99kris/nchat/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build
#PKG_BUILD_PARALLEL:=1

PKG_BUILD_DEPENDS:=golang/host ncurses/host gperf/host

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/nchat
  SECTION:=net
  CATEGORY:=Network
  TITLE:=nchat is a terminal-based
  DEPENDS:=+libncurses +libopenssl +libsqlite3 +file +zlib +libreadline +telegram-tdlib
  URL:=https://github.com/d99kris/nchat
endef

define Package/nchat/description
nchat is a terminal-based chat client for Linux and macOS with support for Telegram and WhatsApp.
endef

CMAKE_OPTIONS +=

define Package/nchat/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,nchat))
