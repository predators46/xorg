#
# Copyright (C) 2007-2019 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-requests
PKG_VERSION:=2.31.0
PKG_RELEASE:=2

PKG_MAINTAINER:=Josef Schlehofer <pepe.schlehofer@gmail.com>, Alexandru Ardelean <ardeleanalex@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE
PKG_CPE_ID:=cpe:/a:python:requests

PYPI_NAME:=requests
PKG_HASH:=942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1

HOST_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-requests
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=HTTP library for Python
  URL:=https://requests.readthedocs.io
  DEPENDS:= \
	  +python3-light  \
	  +python3-chardet  \
	  +python3-idna  \
	  +python3-urllib3  \
	  +python3-certifi
endef

define Package/python3-requests/description
  Requests is the only Non-GMO HTTP library for Python, safe for human consumption
endef

$(eval $(call Py3Package,python3-requests))
$(eval $(call BuildPackage,python3-requests))
$(eval $(call BuildPackage,python3-requests-src))
$(eval $(call HostBuild))
