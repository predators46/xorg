# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=xkeyboard-config
PKG_VERSION:=2.41
PKG_RELEASE:=1

PKG_SOURCE_URL:=http://xorg.freedesktop.org/archive/individual/data/$(PKG_NAME)/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=f02cd6b957295e0d50236a3db15825256c92f67ef1f73bf1c77a4b179edf728f

PKG_BUILD_DEPENDS:=intltool/host perl-xml-parser/host
PKG_BUILD_PARALLEL:=1
#PKG_FIXUP:=autoconf
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/xkeyboard-config
  SECTION:=xorg
  CATEGORY:=Xorg
  DEPENDS:=+libx11 +xkbcomp
  TITLE:=X keyboard configuration files
  URL:=http://www.freedesktop.org/wiki/Software/XKeyboardConfig
endef

CONFIGURE_VARS+= \
	PATH=$(STAGING_DIR_HOSTPKG)/bin:$(STAGING_DIR_HOSTPKG)/usr/bin:$(PATH)

MAKE_FLAGS+= \
	PATH=$(STAGING_DIR_HOSTPKG)/bin:$(STAGING_DIR_HOSTPKG)/usr/bin:$(PATH)

MAKE_VARS+= \
	PATH=$(STAGING_DIR_HOSTPKG)/bin:$(STAGING_DIR_HOSTPKG)/usr/bin:$(PATH)

CONFIGURE_ARGS += \
  --with-xkb-rules-symlink=xorg \
  --enable-compat-rules=yes \
  --without-xsltproc \
  --enable-runtime-deps \
  --prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/pkgconfig \
	  $(1)/usr/lib/
endef

define Package/xkeyboard-config/install
	$(INSTALL_DIR) \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/X11 \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,xkeyboard-config))
