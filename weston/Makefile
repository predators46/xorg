include $(TOPDIR)/rules.mk

PKG_NAME:=weston
PKG_VERSION:=12.0.3
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://gitlab.freedesktop.org/wayland/weston/-/releases/$(PKG_VERSION)/downloads/
PKG_HASH:=0fa88359e691ce6de47ee92d7bd0c10ec8c54b064d07b204715fc479eef0db6d

PKG_MAINTAINER:=Daniel Golle <daniel@makrotopia.org>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=wayland/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/weston
  SECTION:=libs
  CATEGORY:=Libraries
  SUBMENU:=Video
  TITLE:=weston
  URL:=https://wayland.freedesktop.org/
  DEPENDS:=+gstreamer1-plugins-base +libcairo +libevdev \
	+libgst1allocators +libgst1app +libgst1video +libgstreamer1 +libinput \
	+libmesa +libpango +libseat +libwayland +libwebp +libxkbcommon +pixman \
	+seatd +wayland-protocols +xkeyboard-config +libpam +lcms2 +libx11 +libxcb
endef

define Package/weston/description
endef

MESON_ARGS += \
	-Dlauncher-libseat=true \
	-Dbackend-drm=true \
	-Dbackend-drm-screencast-vaapi=false \
	-Dbackend-headless=false \
	-Dbackend-pipewire=false \
	-Dbackend-rdp=false \
	-Dbackend-vnc=false \
	-Dbackend-x11=true \
	-Dxwayland=false \
	-Dsystemd=false \
	-Dpipewire=false \
	-Dtest-junit-xml=false \
	-Ddemo-clients=true \
	-Ddoc=false \
	-Dscanner_bin="$(STAGING_DIR_HOSTPKG)/bin/wayland-scanner"

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/lib*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig
endef

define Package/weston/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/libweston-10
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libweston-10/*.so* $(1)/usr/lib/libweston-10/
	$(INSTALL_DIR) $(1)/usr/lib/weston
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/weston/*.so* $(1)/usr/lib/weston/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin
	$(INSTALL_DIR) $(1)/usr/libexec
	$(CP) $(PKG_INSTALL_DIR)/usr/libexec/* $(1)/usr/libexec/
	$(INSTALL_DIR) $(1)/usr/share/libweston-10/protocols
	$(CP) $(PKG_INSTALL_DIR)/usr/share/libweston-10/protocols/* $(1)/usr/share/libweston-10/protocols/
	$(INSTALL_DIR) $(1)/usr/share/weston
	$(CP) $(PKG_INSTALL_DIR)/usr/share/weston/* $(1)/usr/share/weston/
endef

$(eval $(call BuildPackage,weston))
