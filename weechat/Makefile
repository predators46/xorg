include $(TOPDIR)/rules.mk

PKG_NAME:=weechat
PKG_VERSION:=4.3.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://weechat.org/files/src/
PKG_HASH:=157e22a17dcc303c665739631a04470d786474e805febed2ed2d5b6250d18653

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0 license
PKG_LICENSE_FILES:=COPYING

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/weechat
	SECTION:=net
	CATEGORY:=Network
	TITLE:=The extensible chat client.
	DEPENDS:=+libncurses +libopenssl +libintl-full +cJSON +zlib +ruby +libgnutls +libcurl +liblua +libzstd +tcl +libgcrypt +python3 +aspell
	URL:=https://github.com/weechat/weechat
endef

define Package/weechat/description
	WeeChat (Wee Enhanced Environment for Chat) is a free chat client, fast and light, designed for many operating systems.
	It is highly customizable and extensible with scripts.
endef

CMAKE_OPTIONS += \
	-DCMAKE_BUILD_TYPE=Release \
	-DENABLE_PERL=OFF \
	-DENABLE_PYTHON=ON \
	-DENABLE_GUILE=OFF \
	-DENABLE_JAVASCRIPT=OFF \
	-DENABLE_PHP=OFF \
	-DENABLE_SPELL=ON

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib/pkgconfig

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/weechat \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/weechat.pc \
	  $(1)/usr/lib/pkgconfig/

	$(SED) 's,^\(prefix\)=.*,\1=$$$${prefix},g' \
	  $(1)/usr/lib/pkgconfig/weechat.pc
endef

define Package/weechat/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/{weechat,weechat-curses,weechat-headless} \
	  $(1)/usr/bin/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/weechat \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/{applications,icons} \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,weechat))
