include $(TOPDIR)/rules.mk

PKG_NAME:=libxkbcommon
PKG_VERSION:=1.7.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xkbcommon.org/download/
PKG_HASH:=65782f0a10a4b455af9c6baab7040e2f537520caa2ec2092805cdfd36863b247

PKG_MAINTAINER:=Daniel Golle <daniel@makrotopia.org>
PKG_LICENSE:=BSD-3-Clause

PKG_BUILD_DEPENDS:=wayland wayland-protocols libx11 libxcb

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

MESON_ARGS += \
	-Denable-x11=true \
	-Denable-docs=false \
	-Denable-wayland=true \
	-Dscanner_bin="$(STAGING_DIR_HOSTPKG)/bin/wayland-scanner"

define Package/libxkbcommon
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=libxkbcommon
  URL:=https://xkbcommon.org/
  DEPENDS:=+libxml2 +xkeyboard-config
endef

define Package/libxkbcommon/description
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig/
endef

define Package/libxkbcommon/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/libexec/xkbcommon
	$(CP) $(PKG_INSTALL_DIR)/usr/libexec/xkbcommon/* $(1)/usr/libexec/xkbcommon/
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/xkbcli $(1)/usr/bin/
endef

$(eval $(call BuildPackage,libxkbcommon))
