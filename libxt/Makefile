# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=libxt
_PKG_NAME:=libXt
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.x.org/releases/individual/lib/
PKG_SOURCE:=$(_PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=52820b3cdb827d08dc90bdfd1b0022a3ad8919b57a39808b12591973b331bf91

PKG_BUILD_DIR:=$(BUILD_DIR)/$(_PKG_NAME)-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=e2fsprogs

PKG_FIXUP:=autoreconf
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libxt
  SECTION:=libs
  CATEGORY:=Libraries
  DEPENDS:=+libx11 +libsm +libice
  TITLE:=X11 toolkit intrinsics library
  URL:=http://xorg.freedesktop.org/
endef

define Build/Prepare
# hack for cross
	$(call Build/Prepare/Default)
	$(SED) \
	 's,util/Makefile,,g' \
	 $(PKG_BUILD_DIR)/configure.ac
	echo -e 'install: \nall: ' > $(PKG_BUILD_DIR)/util/Makefile
	rm -fr $(PKG_BUILD_DIR)/util/Makefile.*
	$(HOSTCC) $(HOST_CFLAGS) -I$(PKG_BUILD_DIR)/include \
	$(PKG_BUILD_DIR)/util/makestrs.c -o $(PKG_BUILD_DIR)/util/makestrs
endef


TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
  --enable-malloc0returnsnull \
  --with-appdefaultdir=/etc/X11/app-defaults \
  --disable-specs \
  --prefix=/usr \
  --without-xmlto \
  --without-xsltproc\
  --without-fop

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/* \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/libxt/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libxt))
