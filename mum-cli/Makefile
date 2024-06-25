include $(TOPDIR)/rules.mk

PKG_NAME:=mum
PKG_VERSION:=0.5.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/mum-rs/mum/archive/v$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=rust/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0
PKG_BUILD_FLAGS:=no-mips16

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/xorg/rust/rust-package.mk

define Package/mum
  SECTION:=sound
  CATEGORY:=Sound
  TITLE:=Daemon/cli mumble client
  DEPENDS:=$(RUST_ARCH_DEPENDS) +alsa-lib +libopenssl +libopus +libnotify
  URL:=https://github.com/mum-rs/mum
endef

define Package/mum/description
  Mumble daemon with controller (think mpd(1)/mpc(1)) written in Rust.
endef

$(eval $(call RustBinPackage,mum))
$(eval $(call BuildPackage,mum))
