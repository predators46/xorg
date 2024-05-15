include $(TOPDIR)/rules.mk

PKG_NAME:=xkeyboard-config
PKG_VERSION:=2.41
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/data/xkeyboard-config
PKG_HASH:=f02cd6b957295e0d50236a3db15825256c92f67ef1f73bf1c77a4b179edf728f

PKG_MAINTAINER:=Daniel Golle <daniel@makrotopia.org>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=libxslt/host intltool/host perl-xml-parser/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

MESON_ARGS += \
	-Dcompat-rules=false \
	-Dxorg-rules-symlinks=false \
	-Dnls=false

define Package/xkeyboard-config
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=xkeyboard-config
  URL:=https://www.freedesktop.org/wiki/Software/XKeyboardConfig/
endef

define Package/xkeyboard-config/description
  The non-arch keyboard configuration database for X Window.
endef

define Package/xkeyboard-config/install
	$(INSTALL_DIR) $(1)/usr/share/X11/xkb
	$(CP) $(PKG_INSTALL_DIR)/usr/share/X11/xkb/* $(1)/usr/share/X11/xkb/
endef

$(eval $(call BuildPackage,xkeyboard-config))
