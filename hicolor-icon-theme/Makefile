include $(TOPDIR)/rules.mk

PKG_NAME:=hicolor-icon-theme
PKG_VERSION:=0.17
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://icon-theme.freedesktop.org/releases
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=317484352271d18cbbcfac3868eab798d67fff1b8402e740baa6ff41d588a9d8

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GNU General Public License v2.0 or later
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/hicolor-icon-theme
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Freedesktop.org Hicolor icon theme
	URL:=https://icon-theme.freedesktop.org
endef

define Package/hicolor-icon-theme/description
	Freedesktop.org Hicolor icon theme
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr

define Package/hicolor-icon-theme/install
	$(INSTALL_DIR) \
	  $(1)/usr/share/icons

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/icons \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,hicolor-icon-theme))
