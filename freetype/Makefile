include $(TOPDIR)/rules.mk

PKG_NAME:=python-markupsafe
PKG_VERSION:=2.1.5
PKG_RELEASE:=1

PYPI_NAME:=MarkupSafe
PKG_HASH:=d283d37a890ba4c1ae73ffadf8046435c76e7bc2247bbb63c00bd1a709c6544b

PKG_MAINTAINER:=
PKG_LICENSE:=BSD-3-Clause license
PKG_LICENSE_FILES:=LICENSE.rst

PKG_BUILD_FLAGS:=no-mips16

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-wheel/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-markupsafe
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Safely add untrusted strings to HTML/XML markup.
  URL:=https://github.com/pallets/markupsafe/
  DEPENDS:=+python3-light
endef

define Package/python3-markupsafe/description
  MarkupSafe implements a text object that escapes characters so it is safe to use in HTML and XML. Characters that have special meanings are replaced so that they display as the actual characters. This mitigates injection attacks, meaning untrusted user input can safely be displayed on a page.
endef

$(eval $(call Py3Package,python3-markupsafe))
$(eval $(call BuildPackage,python3-markupsafe))
$(eval $(call BuildPackage,python3-markupsafe-src))
$(eval $(call HostBuild))
