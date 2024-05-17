include $(TOPDIR)/rules.mk

PKG_NAME:=python-jinja2
PKG_VERSION:=3.1.4
PKG_RELEASE:=1

PYPI_NAME:=Jinja2
PKG_HASH:=4a3aee7acbbe7303aede8e9648d13b8bf88a429282aa6122a993f0ac800cb369

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause license
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-markupsafe/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-jinja2
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A small but fast and easy to use stand-alone python template engine
  URL:=https://github.com/pallets/jinja/
  DEPENDS:=+python3-markupsafe
endef

define Package/python3-jinja2/description
  Jinja is a fast, expressive, extensible templating engine.
  Special placeholders in the template allow writing code similar to Python syntax.
  Then the template is passed data to render the final document.
endef

$(eval $(call Py3Package,python3-jinja2))
$(eval $(call BuildPackage,python3-jinja2))
$(eval $(call BuildPackage,python3-jinja2-src))
$(eval $(call HostBuild))
