include $(TOPDIR)/rules.mk

PKG_NAME:=cargo-c
PKG_VERSION:=0.9.32
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/lu-zero/cargo-c/archive/v$(PKG_VERSION)
PKG_HASH:=a96f3cc6c63d9901c9583083338d50b0132504bb067f68accc17f4116ed01f72

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT license
PKG_LICENSE_FILES:=LICENSE

#HOST_BUILD_DEPENDS:=rust/host

#PKG_HOST_ONLY:=1
PKG_BUILD_FLAGS:=no-mips16

RUST_HOST_FEATURES:=

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/rust/rust-host-build.mk

define Package/cargo-c
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Rust
  TITLE:=build and install C-compatible libraries
  DEPENDS:=
  URL:=https://github.com/lu-zero/cargo-c
endef

define Package/cargo-c/description
  cargo applet to build and install C-ABI compatible dynamic and static libraries.
  It produces and installs a correct pkg-config file, a static library and a dynamic library, and a C header to be used by any C (and C-compatible) software.
endef

$(eval $(call RustBinHostBuild,cargo-c))
$(eval $(call BuildPackage,cargo-c))
$(eval $(call HostBuild))
