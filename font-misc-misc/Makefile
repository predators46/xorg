# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=font-misc-misc
PKG_VERSION:=1.1.3
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.x.org/releases/individual/font/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=79abe361f58bb21ade9f565898e486300ce1cc621d5285bec26e14b6a8618fed

PKG_BUILD_DEPENDS:=font-util font-util/host util-macros bdftopcf/host mkfontscale/host mkfontdir/host
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/font-misc-misc
  SECTION:=xorg
  CATEGORY:=Xorg
  DEPENDS:=+encodings +font-alias +fontconfig
  TITLE:=X.org misc font
  URL:=http://xorg.freedesktop.org/
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
  --prefix=/usr \
  --with-fontrootdir=/usr/share/fonts/X11

###  =$(STAGING_DIR)/usr/share/fonts/X11/util


#define Build/InstallDev
#	$(INSTALL_DIR) \
#	  $(1)/usr/include \
#	  $(1)/usr/lib
#
#	$(CP) \
#	  $(PKG_INSTALL_DIR)/usr/include/* \
#	  $(1)/usr/include/
#
#	$(CP) \
#	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
#	  $(1)/usr/lib/
#endef

define Package/font-misc-misc/install
	$(INSTALL_DIR) \
	  $(1)/usr/share/fonts/X11/misc

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/fonts/X11/misc/{*.pcf.gz,*.dir} \
	  $(1)/usr/share/fonts/X11/misc/
endef

$(eval $(call BuildPackage,font-misc-misc))
