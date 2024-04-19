# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=kbd
PKG_VERSION:=2.6.4
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://mirrors.edge.kernel.org/pub/linux/utils/kbd/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=519f8d087aecca7e0a33cd084bef92c066eb19731666653dcc70c9d71aa40926

#PKG_BUILD_DEPENDS:=
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/kbd
  SECTION:=utils
  CATEGORY:=Utilities
  DEPENDS:=+libx11 +xkeyboard-config
  TITLE:=Tools for configuring the console (keyboard, virtual terminals, etc.)
  URL:=KBD – Linux keyboard tools.
endef

# +ckbcomp

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
  --prefix=/usr \
  --disable-vlock

#define Build/InstallDev
#	$(INSTALL_DIR) \
#	  $(1)/usr/lib
#
#	$(CP) \
#	  $(PKG_INSTALL_DIR)/usr/lib/pkgconfig \
#	  $(1)/usr/lib/
#endef

define Package/kbd/install
	$(INSTALL_DIR) \
	  $(1)/usr/sbin \
	  $(1)/usr/share \

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/sbin/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share \
	  $(1)/usr/

endef

$(eval $(call BuildPackage,kbd))
