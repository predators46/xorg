include $(TOPDIR)/rules.mk

PKG_NAME:=gobject-introspection
PKG_VERSION:=1.80.1
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://download.gnome.org/sources/$(PKG_NAME)/1.80
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=a1df7c424e15bda1ab639c00e9051b9adf5cea1a9e512f8a603b53cd199bc6d8

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GNU Library General Public License v2 only
PKG_LICENSE_FILES:=COPYING COPYING.GPL COPYING.LGPL

HOST_BUILD_DEPENDS:=glib2/host python3/host python-setuptools-scm/host
#PKG_BUILD_DEPENDS:=gobject-introspection/host python3

PKG_BUILD_PARALLEL:=1
HOST_BUILD_PARALLEL:=1
PYTHON3_PKG_BUILD:=0
PYTHON3_HOST_BUILD:=0

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/gobject-introspection
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Introspection system for GObject-based libraries
	DEPENDS:=+glib2 +libffi +python3 +python3-setuptools
	URL:=https://wiki.gnome.org/action/show/Projects/GObjectIntrospection
endef

define Package/gobject-introspection/description
	The goal of the project is to describe the APIs and collect them in a uniform, machine readable format.
endef

MESON_HOST_VARS += \
	python="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)" \
	PYTHON_CPPFLAGS="$(shell $(STAGING_DIR)/host/bin/$(PYTHON3)-config --includes)" \
	PYTHON_LIBS="$(shell $(STAGING_DIR)/host/bin/$(PYTHON3)-config --libs)"

MESON_HOST_ARGS += \
	-Dcairo=disabled \
	-Ddoctool=disabled \
	-Dgtk_doc=false \
	-Dbuild_introspection_data=false

MESON_VARS += \
	python="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)" \
	PYTHON_CPPFLAGS="$(shell $(STAGING_DIR)/host/bin/$(PYTHON3)-config --includes)" \
	PYTHON_LIBS="$(shell $(STAGING_DIR)/host/bin/$(PYTHON3)-config --libs)"

MESON_ARGS += \
	-Dcairo=disabled \
	-Ddoctool=disabled \
	-Dgtk_doc=false \
	-Dbuild_introspection_data=false

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include \
	  $(1)/usr/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/gobject-introspection/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,gobject-introspection))
$(eval $(call HostBuild))
