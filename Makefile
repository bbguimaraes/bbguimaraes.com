.PHONY: check generate tidy xmllint

generate:
all: generate check
check: tidy xmllint
generate:
	$(MAKE) -C src/ $@
tidy: | generate
	scripts/tidy.sh
xmllint: | generate
	xmllint --valid --noout bbguimaraes.com/rss.xml
