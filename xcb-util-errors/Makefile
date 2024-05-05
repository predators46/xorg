include $(TOPDIR)/rules.mk

PKG_NAME:=qt6base
PKG_VERSION:=6.7.0
PKG_RELEASE:=1

PKG_SOURCE:=qtbase-everywhere-src-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://download.qt.io/official_releases/qt/6.7/$(PKG_VERSION)/submodules
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=
PKG_LICENSE_FILES:=

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/qt6base/Default
  SECTION:=libs
  CATEGORY:=Libraries
  SUBMENU:=QT6
  TITLE:=QT6base
  URL:=http://qt-project.org
  DEPENDS:=+librt +zlib +libgcc +libstdcpp +libpcre2-16 +glib2 +libpthread  +libpng +libjpeg-turbo +libfreetype +mtdev +libinput +libevdev +libudev-zero +libdbus +libiconv-full +giflib +fontconfig +libdrm +krb5-libs +libatomic +libopenssl +libdouble-conversion +libsqlite3 @!LINUX_2_6
endef

define Package/qt6base-core
  $(call Package/qt6base/Default)
  TITLE:=core
endef

define Package/qt6base-concurrent
  $(call Package/qt6base/Default)
  TITLE:=concurrent
  DEPENDS:=+qt6base-core
endef

define Package/qt6base-network
  $(call Package/qt6base/Default)
  TITLE:=network
  DEPENDS:=+qt6base-core
endef

define Package/qt6base-sql
  $(call Package/qt6base/Default)
  TITLE:=sql
  DEPENDS:=+qt6base-core
endef

define Package/qt6base-xml
  $(call Package/qt6base/Default)
  TITLE:=xml
  DEPENDS:=+qt6base-core
endef

define Package/qt6base-serialport
  $(call Package/qt6base/Default)
  TITLE:=serialport
  DEPENDS:=+qt6base-core
endef

define Package/qt6base-serialbus
  $(call Package/qt6base/Default)
  TITLE:=serialbus
  DEPENDS:=+qt6base-core +qt6base-network +qt6base-serialport
endef

define Package/qt6base-xmlpatterns
  $(call Package/qt6base/Default)
  TITLE:=xmlpatterns
  DEPENDS:=+qt6base-core +qt6base-network
endef

define Package/qt6base-test
  $(call Package/qt6base/Default)
  TITLE:=test
  DEPENDS:=+qt6base-core
endef

EXTRA_CFLAGS += $(FPIC) -ffunction-sections -fdata-sections -flto
EXTRA_LDFLAGS += -Wl,--gc-sections,--as-needed

CMAKE_OPTIONS += \
	-DCMAKE_SYSROOT=$(STAGING_DIR) \
	-DCMAKE_INSTALL_PREFIX=/usr \
	-DQT_HOST_PATH=$(STAGING_DIR_HOSTPKG) \
	-DCMAKE_MESSAGE_LOG_LEVEL=STATUS \
	-DCMAKE_BUILD_TYPE=Release \
	-DBUILD_SHARED_LIBS=ON \
	-DFEATURE_framework=ON \
	-DQT_QMAKE_TARGET_MKSPEC=devices/linux-generic-g++ \
	-DQT_QMAKE_DEVICE_OPTIONS=CROSS_COMPILE="$(TARGET_CROSS)" \
	-DQT_QMAKE_DEVICE_OPTIONS=COMPILER_FLAGS="$(TARGET_CFLAGS) $(EXTRA_CFLAGS) $(TARGET_CPPFLAGS) $(EXTRA_CPPFLAGS)" \
	-DQT_QMAKE_DEVICE_OPTIONS=LINKER_FLAGS="$(TARGET_LDFLAGS) $(EXTRA_LDFLAGS)" \
	-DBUILD_WITH_PCH=OFF \
	-DCMAKE_INTERPROCEDURAL_OPTIMIZATION=ON \
	-DFEATURE_use_gold_linker=OFF \
	-DQT_BUILD_TESTS=OFF \
	-DQT_BUILD_EXAMPLES=OFF \
	-DFEATURE_gui=ON \
	-DFEATURE_widgets=ON \
	-DFEATURE_dbus=ON \
	-DFEATURE_dbus_linked=ON \
	-DFEATURE_accessibility=ON \
	-DFEATURE_doubleconversion=ON \
	-DFEATURE_system_doubleconversion=ON \
	-DFEATURE_glib=ON \
	-DFEATURE_inotify=ON \
	-DFEATURE_icu=OFF \
	-DFEATURE_pcre2=ON \
	-DFEATURE_system_pcre2=ON \
	-DFEATURE_system_zlib=ON \
	-DFEATURE_ssl=ON \
	-DFEATURE_openssl=ON \
	-DFEATURE_openssl_linked=ON \
	-DFEATURE_libproxy=OFF \
	-DFEATURE_system_proxies=ON \
	-DFEATURE_cups=OFF \
	-DFEATURE_fontconfig=ON \
	-DFEATURE_freetype=ON \
	-DFEATURE_system_freetype=ON \
	-DFEATURE_harfbuzz=OFF \
	-DFEATURE_system_harfbuzz=OFF \
	-DFEATURE_gtk3=OFF \
	-DINPUT_opengl=no \
	-DFEATURE_opengles3=OFF \
	-DFEATURE_egl=OFF \
	-DQT_QPA_DEFAULT_PLATFORM=linuxfb \
	-DFEATURE_xcb_xlib=OFF \
	-DFEATURE_direct2d=OFF \
	-DFEATURE_directfb=OFF \
	-DFEATURE_eglfs=OFF \
	-DFEATURE_gbm=OFF \
	-DFEATURE_kms=OFF \
	-DFEATURE_linuxfb=ON \
	-DFEATURE_xcb=OFF \
	-DFEATURE_libudev=ON \
	-DFEATURE_evdev=ON \
	-DFEATURE_libinput=ON \
	-DFEATURE_mtdev=ON \
	-DFEATURE_tslib=OFF \
	-DFEATURE_system_xcb_xinput=OFF \
	-DFEATURE_xkbcommon=OFF \
	-DFEATURE_gif=ON \
	-DFEATURE_ico=ON \
	-DFEATURE_png=ON \
	-DFEATURE_jpeg=ON \
	-DFEATURE_sql_db2=OFF \
	-DFEATURE_sql_ibase=OFF \
	-DFEATURE_sql_mysql=OFF \
	-DFEATURE_sql_oci=OFF \
	-DFEATURE_sql_odbc=OFF \
	-DFEATURE_sql_psql=OFF \
	-DFEATURE_sql_sqlite=ON \
	-DFEATURE_system_sqlite=ON

define Package/qt6base-core/install
	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt6Core.so* $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt6Core.prl $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt6Core.la $(1)/usr/lib/
endef

define Package/qt6base-concurrent/install
	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt6Concurrent.so* $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt6Concurrent.prl $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt6Concurrent.la $(1)/usr/lib/
endef

define Package/qt6base-network/install
	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt6Network.so* $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt6Network.prl $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt6Network.la $(1)/usr/lib/
endef

define Package/qt6base-sql/install
	$(INSTALL_DIR) $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/Qt/plugins/sqldrivers/
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt6Sql.so* $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt6Sql.prl $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt6Sql.la 	$(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/plugins/sqldrivers/*.so $(1)/usr/lib/Qt/plugins/sqldrivers/
endef

define Package/qt6base-xml/install
	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt6Xml.so* $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt6Xml.prl $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt6Xml.la 	$(1)/usr/lib/
endef

define Package/qt6base-serialport/install
	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtserialport/lib/libQt6SerialPort.so* $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtserialport/lib/libQt6SerialPort.prl $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtserialport/lib/libQt6SerialPort.la $(1)/usr/lib/
endef

define Package/qt6base-serialbus/install
	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtserialbus/lib/libQt6SerialBus.so* $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtserialbus/lib/libQt6SerialBus.prl $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtserialbus/lib/libQt6SerialBus.la $(1)/usr/lib/
endef

define Package/qt6base-xmlpatterns/install
	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtxmlpatterns/lib/libQt6XmlPatterns.so* $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtxmlpatterns/lib/libQt6XmlPatterns.prl $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtxmlpatterns/lib/libQt6XmlPatterns.la $(1)/usr/lib/
endef

define Package/qt6base-test/install
	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt6Test.so* $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt6Test.prl $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt6Test.la $(1)/usr/lib/
endef

#$(eval $(call BuildPackage,qt6base))
$(eval $(call BuildPackage,qt6base-core))
$(eval $(call BuildPackage,qt6base-concurrent))
$(eval $(call BuildPackage,qt6base-network))
$(eval $(call BuildPackage,qt6base-sql))
$(eval $(call BuildPackage,qt6base-xml))
$(eval $(call BuildPackage,qt6base-serialport))
$(eval $(call BuildPackage,qt6base-serialbus))
$(eval $(call BuildPackage,qt6base-xmlpatterns))
$(eval $(call BuildPackage,qt6base-test))
