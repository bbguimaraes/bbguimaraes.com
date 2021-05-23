.PHONY: check tidy xmllint

check: tidy xmllint
tidy:
	scripts/tidy.sh
xmllint:
	xmllint --valid --noout bbguimaraes.com/blog/rss.xml
