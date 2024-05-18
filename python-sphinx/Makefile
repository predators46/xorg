include $(TOPDIR)/rules.mk

PKG_NAME:=python-sphinx
PKG_VERSION:=7.3.7
PKG_RELEASE:=1

PYPI_NAME:=sphinx
PKG_HASH:=a4a7db75ed37531c05002d56ed6948d4c42f473a36f46e1382b0bd76ca9627bc

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.rst

HOST_BUILD_DEPENDS:= \
	python3/host \
	python-alabaster/host \
	python-babel/host \
	python-docutils/host \
	python-imagesize/host \
	python-jinja2/host \
	python-packaging/host \
	python-pygments/host \
	python-requests/host \
	snowballstemmer/host \
	sphinxcontrib-applehelp/host \
	sphinxcontrib-devhelp/host \
	sphinxcontrib-htmlhelp/host \
	sphinxcontrib-jsmath/host \
	sphinxcontrib-qthelp/host \
	sphinxcontrib-serializinghtml/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-sphinx
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python documentation generator
  URL:=https://github.com/sphinx-doc/sphinx
  DEPENDS:= \
	+python3 \
	+python3-alabaster \
	+python3-babel \
	+python3-docutils \
	+python3-imagesize \
	+python3-jinja2 \
	+python3-packaging \
	+python3-pygments \
	+python3-requests \
	+python3-snowballstemmer \
	+python3-sphinxcontrib-applehelp \
	+python3-sphinxcontrib-devhelp \
	+python3-sphinxcontrib-htmlhelp \
	+python3-sphinxcontrib-jsmath \
	+python3-sphinxcontrib-qthelp \
	+python3-sphinxcontrib-serializinghtml
endef

define Package/python3-sphinx/description
  Sphinx uses reStructuredText as its markup language, and many of its strengths come from the power and
  straightforwardness of reStructuredText and its parsing and translating suite, the Docutils.
endef

$(eval $(call Py3Package,python3-sphinx))
$(eval $(call BuildPackage,python3-sphinx))
$(eval $(call BuildPackage,python3-sphinx-src))
$(eval $(call HostBuild))
