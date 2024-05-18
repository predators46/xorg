include $(TOPDIR)/rules.mk

PKG_NAME:=snowballstemmer
PKG_VERSION:=2.2.0
PKG_RELEASE:=1

PYPI_NAME:=snowballstemmer
PKG_HASH:=09b16deb8547d3412ad7b590689584cd0fe25ec8db3be37788be3810cbf19cb1

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause license
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-snowballstemmer
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Snowball stemming library collection for Python3
  URL:=https://github.com/snowballstem/snowball
  DEPENDS:=+python3
endef

define Package/python3-snowballstemmer/description
  Python 3 (>= 3.3) is supported. We no longer actively support Python 2 as the Python developers stopped supporting it at the start of 2020.
  Snowball 2.1.0 was the last release to officially support Python 2.
endef

$(eval $(call Py3Package,python3-snowballstemmer))
$(eval $(call BuildPackage,python3-snowballstemmer))
$(eval $(call BuildPackage,python3-snowballstemmer-src))
$(eval $(call HostBuild))
