include $(TOPDIR)/rules.mk

PKG_NAME:=xterm
PKG_VERSION:=390
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://invisible-mirror.net/archives/xterm/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tgz
PKG_HASH:=75117c3cc5174a09c425ef106e69404d72f5ef05e03a5da00aaf15792d6f9c0f

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/xterm
	SECTION:=xorg
	CATEGORY:=Xorg
	TITLE:=X Terminal Emulator
	DEPENDS:=+libx11 +libice +libxt +libxmu +libxaw +libxpm +libxinerama +libncurses +libfreetype +fontconfig +libxft
	URL:=https://invisible-island.net/xterm/
endef

define Package/xterm/description
	The xterm program is a terminal emulator for the X Window System.
	It was originally developed in the mid-1980s to provide DEC VT102 and Tektronix 4014 compatible terminals for programs that cannot use the window system directly.
endef

export TERMINFO=/usr/share/terminfo

CONFIGURE_ARGS += \
	--prefix=/usr \
	--enable-trace \
	--with-x \
	--enable-env-terminfo \
	--enable-builtin-xpms \
	--enable-exec-xterm \
	--disable-i18n \
	--enable-logging \
	--disable-initial-erase \
	--enable-mini-luit \
	--with-app-defaults=/etc/X11/app-defaults

define Package/xterm/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/etc/X11 \
	  $(1)/usr/share/pixmaps

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/{koi8rxterm,resize,uxterm,xterm} \
	  $(1)/usr/bin/
	$(CP) \
	  $(PKG_INSTALL_DIR)/etc/X11 \
	  $(1)/etc/
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/pixmaps \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,xterm))
