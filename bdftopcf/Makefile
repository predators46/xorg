# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=bdftopcf
PKG_VERSION:=1.1.1
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.x.org/releases/individual/util/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=11c953d53c0f3ed349d0198dfb0a40000b5121df7eef09f2615a262892fed908

HOST_BUILD_DEPENDS:=util-macros/host xorgproto/host
PKG_HOST_ONLY:=1
#PKG_BUILD_PARALLEL:=1
HOST_BUILD_PARALLEL:=1
#PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/bdftopcf
  SECTION:=xorg
  CATEGORY:=Xorg
  DEPENDS:=
  TITLE:=X.Org font utility
  URL:=http://xorg.freedesktop.org/
endef

define Package/bdftopcf/description
    Convert X font from Bitmap Distribution Format to Portable Compiled Format
endef

#define Package/bdftopcf/install
#	$(INSTALL_DIR) \
#	  $(1)/usr/bin
#
#	$(CP) \
#	  $(PKG_INSTALL_DIR)/usr/bin/* \
#	  $(1)/usr/bin/
#endef

$(eval $(call BuildPackage,bdftopcf))
$(eval $(call HostBuild))
