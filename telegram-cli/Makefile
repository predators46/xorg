include $(TOPDIR)/rules.mk

PKG_NAME:=telegram-cli
PKG_VERSION:=1.3.1
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/vysheng/tg.git
PKG_SOURCE_VERSION:=6547c0b21b977b327b3c5e8142963f4bc246187a
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0 license
PKG_LICENSE_FILES:=LICENSE

#PKG_REMOVE_FILES:=ax_lua.m4
PKG_FIXUP:=autoreconf

PKG_BUILD_DEPENDS:=telegram-cli/host

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/telegram-cli
	SECTION:=net
	CATEGORY:=Network
	TITLE:=Terminal-based Telegram / WhatsApp client for Linux and macOS
	DEPENDS:=+libconfig +libopenssl +libreadline +libevent2 +jansson +libpthread +libncurses +liblua +zlib
	URL:=https://github.com/vysheng/tg
endef

define Package/telegram-cli/description
	Command-line interface for Telegram. Uses readline interface.
endef

HOST_CONFIGURE_ARGS += \
	--disable-python \
	--disable-valgrind

CONFIGURE_ARGS += \
	--disable-python \
	--disable-valgrind

define Host/Compile
	$(MAKE) $(HOST_JOBS) -C $(HOST_BUILD_DIR)/tgl $(HOST_MAKE_FLAGS)
endef

define Package/telegram-cli/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/bin/telegram-cli $(1)/usr/bin
	$(INSTALL_DIR) $(1)/etc/telegram-cli
	$(INSTALL_CONF) $(PKG_BUILD_DIR)/tg-server.pub $(1)/etc/telegram-cli
endef

define Package/telegram-cli/postinst
#!/bin/sh

echo 'Warning! Requires 256MB + 256MB SWAP to start, ~100MB of RAM while running.'
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,telegram-cli))
