include $(TOPDIR)/rules.mk

PKG_NAME:=seatd
PKG_VERSION:=0.8.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://git.sr.ht/~kennylevinsen/seatd/archive/
PKG_HASH:=a562a44ee33ccb20954a1c1ec9a90ecb2db7a07ad6b18d0ac904328efbcf65a0

PKG_BUILD_DIR:=$(BUILD_DIR)/seatd-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/seatd-$(PKG_VERSION)

PKG_MAINTAINER:=Daniel Golle <daniel@makrotopia.org>
PKG_LICENSE:=MIT

PKG_BUILD_DEPENDS:=wayland/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/libseat
  SECTION:=libs
  CATEGORY:=Libraries
  SUBMENU:=Video
  TITLE:=libseat
  URL:=https://git.sr.ht/~kennylevinsen/seatd
endef

define Package/libseat/description
  A universal seat management library.
endef

define Package/seatd
  SECTION:=libs
  CATEGORY:=Libraries
  SUBMENU:=Video
  TITLE:=seatd
  URL:=https://git.sr.ht/~kennylevinsen/seatd
  DEPENDS:=+libseat
endef

define Package/seatd/description
  A minimal seat management daemon.
endef

MESON_ARGS += \
	-Dlibseat-logind=disabled \
	-Dlibseat-seatd=enabled \
	-Dlibseat-builtin=disabled \
	-Dserver=enabled \
	-Dexamples=disabled \
	-Dman-pages=disabled \
	-Ddefaultpath="/tmp/run/seatd.sock"

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/lib*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig
endef

define Package/libseat/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/lib*.so.* $(1)/usr/lib/
endef

define Package/seatd/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/seatd $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/seatd.init $(1)/etc/init.d/seatd
endef

$(eval $(call BuildPackage,libseat))
$(eval $(call BuildPackage,seatd))
$(eval $(call HostBuild))
