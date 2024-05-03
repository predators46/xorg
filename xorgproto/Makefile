include $(TOPDIR)/rules.mk

PKG_NAME:=xorgproto
PKG_VERSION:=2024.1
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://xorg.freedesktop.org/archive/individual/proto/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=372225fd40815b8423547f5d890c5debc72e88b91088fbfb13158c20495ccb59

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause, HPND, HPND-sell-variant, ICU, MIT, MIT-open-group, SGI-B-2.0, SMLNJ, X11, X11-distribute-modifications-variant
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=util-macros libxslt/host
HOST_BUILD_DEPENDS:=util-macros/host libxslt/host

PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/xorgproto
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X.Org X11 Protocol headers
	URL:=http://xorg.freedesktop.org/
endef

define Package/xorgproto/description
	combined X.Org X11 Protocol headers
endef

MESON_ARGS += \
	-Dlegacy=true

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

define Host/Install
	$(call Host/Install/Default)
	$(INSTALL_DIR) \
	  $(STAGING_DIR_HOSTPKG)/lib/pkgconfig

	$(CP) \
	  $(HOST_BUILD_DIR)/*.pc \
	  $(STAGING_DIR_HOSTPKG)/lib/pkgconfig/
endef

$(eval $(call BuildPackage,xorgproto))
$(eval $(call HostBuild))
