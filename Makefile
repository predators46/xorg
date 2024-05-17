include $(TOPDIR)/rules.mk

PKG_NAME:=python-typogrify
PKG_VERSION:=2.0.7
PKG_RELEASE:=1

PYPI_NAME:=typogrify
PKG_HASH:=8be4668cda434163ce229d87ca273a11922cb1614cb359970b7dc96eed13cb38

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-smartypants/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-typogrify
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Filters to enhance web typography, including support for Django & Jinja templates
  URL:=https://github.com/mintchaos/typogrify
  DEPENDS:=+python3-smartypants
endef

define Package/python3-typogrify/description
  Typogrify provides a set of custom filters that automatically apply various transformations to plain text in order to yield typographically-improved HTML.
  While often used in conjunction with Jinja and Django template systems, the filters can be used in any environment.
endef

$(eval $(call Py3Package,python3-typogrify))
$(eval $(call BuildPackage,python3-typogrify))
$(eval $(call BuildPackage,python3-typogrify-src))
$(eval $(call HostBuild))
