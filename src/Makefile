.PHONY: generate

FILES = \
	bin \
	blog/index \
	blog/tags/index \
	codex/index \
	contact \
	custos/index \
	gdb_lua/index \
	impero/index \
	index \
	lib/index \
	lib/list \
	machinatrix/index \
	music/about \
	music/index \
	nngn/index \
	nngn/screenshots/compute \
	nngn/screenshots/engine \
	nngn/screenshots/lighting \
	nngn/screenshots/post \
	nngn/screenshots/tools \
	pictures/about \
	pictures/index \
	places/index \
	random/index \
	subs/index \
	talks/index

../bbguimaraes.com/rss.xml: \
	rss.lua \
	include/rss.lua \
	$(wildcard blog/data/*) \
	$(wildcard lib/data/*) \
	$(wildcard music/data/*) \
	$(wildcard places/data/*)
../bbguimaraes.com/rss.xml:
	cd ../ && src/generate.lua src/rss.lua > src/$@

generate: ../bbguimaraes.com/rss.xml
	@cd ../ && for x in $(FILES); do \
		src/generate.lua src/$$x.lua > bbguimaraes.com/$$x.html || exit; \
	done
