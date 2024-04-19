# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=util-macros
PKG_VERSION:=1.20.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.x.org/releases/individual/util/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=0b86b262dbe971edb4ff233bc370dfad9f241d09f078a3f6d5b7f4b8ea4430db

PKG_BUILD_PARALLEL:=1
HOST_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/util-macros
  SECTION:=utils
  CATEGORY:=Utilities
  DEPENDS:=
  TITLE:=X.Org Autotools macros
  URL:=http://xorg.freedesktop.org/
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
  --prefix="$(STAGING_DIR_HOSTPKG)" \
  --exec-prefix="$(STAGING_DIR_HOSTPKG)"

CONFIGURE_ARGS += \
  --prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/share \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/aclocal \
	  $(1)/usr/share/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/pkgconfig \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,util-macros))
$(eval $(call HostBuild))
