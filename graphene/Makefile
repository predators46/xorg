include $(TOPDIR)/rules.mk

PKG_NAME:=graphene
PKG_VERSION:=1.10.8
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/ebassi/graphene/archive/$(PKG_VERSION)
PKG_HASH:=922dc109d2dc5dc56617a29bd716c79dd84db31721a8493a13a5f79109a4a4ed

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT license
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=glib2/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/graphene
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A thin layer of graphic data types
	DEPENDS:=+glib2
	URL:=https://github.com/ebassi/graphene
endef

define Package/graphene/description
	A thin layer of types for graphic libraries
endef

MESON_ARGS += \
	-Dgtk_doc=false \
	-Dgobject_types=false \
	-Dintrospection=false \
	-Dtests=false \
	-Dinstalled_tests=false

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include \
	  $(1)/usr/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/graphene-1.0/include/*.h \
	  $(1)/usr/include/graphene-1.0/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/graphene/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,graphene))
