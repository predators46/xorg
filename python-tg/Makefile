include $(TOPDIR)/rules.mk

PKG_NAME:=python-tg
PKG_VERSION:=0.19.0
PKG_RELEASE:=1

PYPI_NAME:=tg
PKG_HASH:=2f1ad2fd1af78e10dfe50663cc9b1f31af531fcd27f630f6a1fc1aa2d5b569cb

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Unlicense license
PKG_LICENSE_FILES:=UNLICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-build/host python-installer/host python-wheel/host python-poetry-core/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-build/host python-installer/host python-wheel/host python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-tg
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=terminal telegram client
  URL:=https://github.com/paul-nameless/tg
  DEPENDS:=+python3 +python3-telegram +python3-setuptools
endef

define Package/python3-tg/description
  Terminal telegram client that really works
endef

$(eval $(call Py3Package,python3-tg))
$(eval $(call BuildPackage,python3-tg))
$(eval $(call BuildPackage,python3-tg-src))
$(eval $(call HostBuild))
