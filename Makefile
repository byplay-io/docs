# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = manual
BUILDDIR      = _build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)


SPHINXAUTOBUILD = sphinx-autobuild

ALLSPHINXLIVEOPTS   = $(ALLSPHINXOPTS) \
	--ignore "*.swp" \
	--ignore "*.pdf" \
	--ignore "*.log" \
	--ignore "*.out" \
	--ignore "*.toc" \
	--ignore "*.aux" \
	--ignore "*.idx" \
	--ignore "*.ind" \
	--ignore "*.ilg" \
	--ignore "*.tex" \
	--ignore "*.xml" \
	--watch source

.PHONY: livehtml
livehtml:
	sphinx-autobuild "$(SOURCEDIR)" $(BUILDDIR) $(ALLSPHINXLIVEOPTS)
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)."