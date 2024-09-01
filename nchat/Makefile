include $(TOPDIR)/rules.mk

PKG_NAME:=nchat
PKG_VERSION:=4.88
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/d99kris/nchat.git
PKG_SOURCE_VERSION:=1f3c82ed374177262a2b9d7c6f0eb7fca7f43d7b
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT license
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_DEPENDS:=ncurses/host gperf/host golang/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

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
	-DHAS_DUMMY=ON \
	-DHAS_TELEGRAM=ON \
	-DHAS_WHATSAPP=ON \
	-DHAS_DYNAMICLOAD=ON \
	-DHAS_MULTIPROTOCOL=ON \
	-DHAS_COREDUMP=ON

MAKE_VARS += \
	GO_INSTALL_BIN_PATH="$(strip $(GO_PKG_INSTALL_BIN_PATH))" \
	BUILD_DIR="$(PKG_BUILD_DIR)" \
	GO_BUILD_DIR="$(GO_PKG_BUILD_DIR)" \
	GO_BUILD_BIN_DIR="$(GO_PKG_BUILD_BIN_DIR)" \
	GO_BUILD_DEPENDS_PATH="$(GO_PKG_BUILD_DEPENDS_PATH)" \
	GO_BUILD_DEPENDS_SRC="$(GO_PKG_BUILD_DEPENDS_SRC)" \
	GOOS="$(GO_OS)" \
	GOARCH="$(GO_ARCH)" \
	CC="$(TARGET_CC)" \
	CXX="$(TARGET_CXX)" \
	CGO_CFLAGS="$(filter-out $(GO_CFLAGS_TO_REMOVE),$(TARGET_CFLAGS))" \
	CGO_CPPFLAGS="$(TARGET_CPPFLAGS)" \
	CGO_CXXFLAGS="$(filter-out $(GO_CFLAGS_TO_REMOVE),$(TARGET_CXXFLAGS))" \
	CGO_LDFLAGS="$(TARGET_LDFLAGS)" \
	GOPATH="$(GO_PKG_BUILD_DIR)" \
	GOCACHE="$(GO_BUILD_CACHE_DIR)" \
	GOMODCACHE="$(GO_MOD_CACHE_DIR)" \
	GOFLAGS="$(GO_PKG_GCFLAGS)" \
	GO_PKG_CFLAGS="$(GO_PKG_CFLAGS)" \
	CGO_ENABLED=1 \
	GOENV=off \
	PREFIX=/usr \
	LIBEXECDIR=/usr/lib \
	LIBEXECPODMAN=/usr/lib/podman \
	SHAREDIR_CONTAINERS=/usr/share/containers \
	ETCDIR=/etc \
	TMPFILESDIR=/var/run/podman \
	BUILDTAGS="$(GO_PKG_TAGS)" \
	EXTRA_LDFLAGS="$(GO_PKG_LDFLAGS)"

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

$(eval $(call BuildPackage,nchat))
