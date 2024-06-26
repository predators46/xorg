include $(TOPDIR)/rules.mk

PKG_NAME:=wayland
PKG_VERSION:=1.22.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://gitlab.freedesktop.org/wayland/wayland/-/releases/$(PKG_VERSION)/downloads/
PKG_HASH:=1540af1ea698a471c2d8e9d288332c7e0fd360c8f1d12936ebb7e7cbc2425842

PKG_MAINTAINER:=Daniel Golle <daniel@makrotopia.org>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=libffi/host libxml2/host wayland/host
HOST_BUILD_DEPENDS:=libffi/host libxml2/host wayland/host
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/meson.mk

define Package/libwayland
  SECTION:=libs
  CATEGORY:=Video
  SUBMENU:=Frameworks and Toolkits
  TITLE:=wayland
  URL:=https://wayland.freedesktop.org/
  DEPENDS:=+libexpat +libffi
endef

define Package/libwayland/description
endef

define Package/wayland-scanner
  SECTION:=libs
  CATEGORY:=Video
  SUBMENU:=Frameworks and Toolkits
  TITLE:=wayland
  URL:=https://wayland.freedesktop.org/
  DEPENDS:=+libxml2 +libexpat
endef

define Package/wayland-scanner/description
endef

MESON_HOST_ARGS += \
	-Dscanner=true \
	-Dlibraries=false \
	-Dtests=false \
	-Ddocumentation=false \
	-Ddtd_validation=true

HOST_LDFLAGS += $(STAGING_DIR_HOST)/lib/libz.a -lm

MESON_ARGS += \
	-Dscanner=true \
	-Dlibraries=true \
	-Ddocumentation=false \
	-Ddtd_validation=true

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/lib*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig
	$(foreach BIN,wayland_scanner,
		$(SED) 's/^$(BIN)=$$$${bindir}\/\(.*\)/$(BIN)=$$$${prefix_hostpkg}\/bin\/\1/' $(1)/usr/lib/pkgconfig/wayland-scanner.pc)
endef

define Host/Install
	$(call Host/Install/Meson)
	$(INSTALL_DIR) \
	  $(STAGING_DIR)/usr/lib/pkgconfig

	$(CP) \
	  $(MESON_HOST_BUILD_DIR)/meson-private/wayland-scanner.pc \
	  $(STAGING_DIR)/usr/lib/pkgconfig/
	$(foreach BIN,wayland_scanner,
		$(SED) 's/^$(BIN)=$$$${bindir}\/\(.*\)/$(BIN)=$$$${prefix_hostpkg}\/bin\/\1/' $(STAGING_DIR)/usr/lib/pkgconfig/wayland-scanner.pc)
endef

define Package/libwayland/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/lib*.so.* $(1)/usr/lib/
endef

define Package/wayland-scanner/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/wayland-scanner $(1)/usr/bin/
endef

$(eval $(call BuildPackage,libwayland))
$(eval $(call BuildPackage,wayland-scanner))
$(eval $(call HostBuild))
