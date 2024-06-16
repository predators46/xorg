include $(TOPDIR)/rules.mk

PKG_NAME:=wstunnel
PKG_VERSION:=9.7.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/erebe/wstunnel/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=LICENSE
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=rust/host
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/rust/rust-package.mk

define Package/wstunnel
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Tunnel all your traffic over Websocket
  DEPENDS:=$(RUST_ARCH_DEPENDS)
  URL:=https://github.com/erebe/wstunnel
endef

define Package/wstunnel/description
  Most of the time when you are using a public network, you are behind some kind of firewall or proxy.
  One of their purpose is to constrain you to only use certain kind of protocols and consult only a subset of the web.
  Nowadays, the most widespread protocol is http and is de facto allowed by third party equipment.
endef

$(eval $(call RustBinPackage,wstunnel))
$(eval $(call BuildPackage,wstunnel))
