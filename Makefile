.PHONY: check generate tidy xmllint

generate:
all: generate check
check: tidy xmllint
generate:
	$(MAKE) -C src/ $@
tidy:
	scripts/tidy.sh
xmllint:
	xmllint --valid --noout bbguimaraes.com/rss.xml
