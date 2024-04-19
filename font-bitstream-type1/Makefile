# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=font-bitstream-type1
PKG_VERSION:=1.0.4
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.x.org/releases/individual/font/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=de2f238b4cd72db4228a0ba67829d76a2b7c039e22993d66a722ee385248c628

PKG_BUILD_DEPENDS:=font-util font-util/host util-macros bdftopcf/host mkfontscale/host mkfontdir/host
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/font-bitstream-type1
  SECTION:=xorg
  CATEGORY:=Xorg
  DEPENDS:=+encodings +font-alias +fontconfig
  TITLE:=X.org bitstream Type1 fonts
  URL:=http://xorg.freedesktop.org/
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
  --prefix=/usr \
  --with-mapfiles=/usr/share/fonts/util \
  --with-fontdir=/usr/share/fonts/Type1

##  --with-fontrootdir=$(STAGING_DIR)/usr/share/fonts/X11
###  =$(STAGING_DIR)/usr/share/fonts/X11/util


define Package/font-bitstream-type1/install
	$(INSTALL_DIR) \
	  $(1)/usr/share/fonts

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/fonts/Type1 \
	  $(1)/usr/share/fonts/
endef

$(eval $(call BuildPackage,font-bitstream-type1))
