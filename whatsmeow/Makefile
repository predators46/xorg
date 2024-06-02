include $(TOPDIR)/rules.mk

PKG_NAME:=whatsmeow
PKG_VERSION:=2.3000.1013652801
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/tulir/whatsmeow.git
PKG_SOURCE_VERSION:=7f13c31d2cb10bfa5806da248773b4e5aaa7af94
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MPL-2.0 license
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0
PKG_BUILD_FLAGS:=no-mips16

GO_PKG:=go.mau.fi/whatsmeow
GO_PKG_BUILD_PKG:=$(GO_PKG)./...

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/whatsmeow
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Go library for the WhatsApp web multidevice API
  DEPENDS:=$(GO_ARCH_DEPENDS)
  URL:=https://github.com/tulir/whatsmeow
endef

define Package/whatsmeow/description
  whatsmeow is a Go library for the WhatsApp web multidevice API.
endef

$(eval $(call GoBinPackage,whatsmeow))
$(eval $(call BuildPackage,whatsmeow))