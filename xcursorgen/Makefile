# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=xcursorgen
PKG_VERSION:=1.0.8
PKG_RELEASE:=1

PKG_SOURCE_URL:=http://xorg.freedesktop.org/releases/individual/app/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=32b33ce27b4e285e64ff375731806bb7988cc626ff10915c65f1dc4da640cc9b

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/xcursorgen
  SECTION:=xorg
  CATEGORY:=Xorg
  DEPENDS:=+libx11 +libxcursor +libpng +bzip2
  TITLE:=creates an X cursor file from a collection of PNG images
  URL:=http://xorg.freedesktop.org/
endef

define Package/xcursorgen/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
endef

$(eval $(call BuildPackage,xcursorgen))
$(eval $(call HostBuild))
