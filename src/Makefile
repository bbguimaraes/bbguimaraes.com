.PHONY: generate

FILES = \
	bin \
	blog/index \
	blog/tags/index \
	codex/index \
	contact \
	gdb_lua/index \
	impero/index \
	index \
	lib/index \
	machinatrix/index \
	music/index \
	nngn/index \
	nngn/screenshots/compute \
	nngn/screenshots/engine \
	nngn/screenshots/lighting \
	nngn/screenshots/post \
	nngn/screenshots/tools \
	random/index \
	talks/index
generate:
	@cd ../ && for x in $(FILES); do \
		src/generate.lua src/$$x.lua > bbguimaraes.com/$$x.html || exit; \
	done \
	&& src/generate.lua src/rss.lua > bbguimaraes.com/rss.xml
