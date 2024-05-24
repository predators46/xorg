#
# Copyright (C) 2006-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

PKG_NAME:=pkgconf
PKG_VERSION:=2.1.1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://distfiles.dereferenced.org/pkgconf
PKG_HASH:=1a00b7fa08c7b506a24c40f7cc8d9e0e59be748d731af8f7aa0b4d722bd8ccbe

PKG_MAINTAINER:=Rosen Penev <rosenp@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING
PKG_CPE_ID:=cpe:/a:pkgconf:pkgconf

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

unexport PKG_CONFIG

HOSTCC := $(HOSTCC_NOCACHE)

define Package/pkgconf
  SECTION:=devel
  CATEGORY:=Development
  TITLE:=pkgconf
  URL:=http://pkgconf.org/
endef

define Package/pkgconf/description
  pkgconf is a program which helps to configure compiler and linker flags
  for development frameworks. It is similar to pkg-config from
  freedesktop.org, providing additional functionality while also
  maintaining compatibility.
endef

MESON_HOST_ARGS += \
	-Ddefault_library=static \
	-Dtests=disabled

define Host/Install
	$(call Host/Install/Meson)
	mv $(STAGING_DIR_HOST)/bin/pkgconf $(STAGING_DIR_HOST)/bin/pkg-config.real
	$(INSTALL_BIN) ./files/pkg-config $(STAGING_DIR_HOST)/bin/pkg-config
endef

define Host/Clean
	rm -f $(STAGING_DIR_HOST)/bin/pkg-config.real $(STAGING_DIR_HOST)/bin/pkg-config
	$(call Host/Clean/Meson)
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,pkgconf))
