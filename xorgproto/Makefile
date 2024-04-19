# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=xorgproto
PKG_VERSION:=2024.1
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://xorg.freedesktop.org/archive/individual/proto/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=372225fd40815b8423547f5d890c5debc72e88b91088fbfb13158c20495ccb59

PKG_BUILD_DEPENDS:=util-macros
PKG_BUILD_PARALLEL:=1
HOST_BUILD_DEPENDS:=util-macros/host
HOST_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf

PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/xorgproto
  SECTION:=libs
  CATEGORY:=Libraries
  DEPENDS:=
  TITLE:=Combined X.Org X11 protocol headers
  URL:=http://xorg.freedesktop.org/
endef

HOST_CONFIGURE_ARGS += \
  --prefix="$(STAGING_DIR_HOSTPKG)" \
  --exec-prefix="$(STAGING_DIR_HOSTPKG)"

CONFIGURE_ARGS += \
  --prefix=/usr \
  --without-fop \
  --without-xmlto \
  --without-xsltproc \
  --disable-specs

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/{GL,X11} \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/pkgconfig \
	  $(1)/usr/lib/
endef

define Package/xorgproto/install
endef

$(eval $(call BuildPackage,xorgproto))
$(eval $(call HostBuild))
