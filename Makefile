LIVE_PAGE = smartos.html
DEV_PAGE = smartos-dev.html

BASE_URI = https://us-east.manta.joyent.com/${MANTA_USER}/public
MANTA_DIR = /${MANTA_USER}/public

publish:
	mput -f $(LIVE_PAGE) $(MANTA_DIR)/$(LIVE_PAGE) -H 'Content-Type: text/html; charset=utf-8'

publish/dev:
	mput -f $(LIVE_PAGE) $(MANTA_DIR)/$(DEV_PAGE) -H 'Content-Type: text/html; charset=utf-8'

open:
	open $(BASE_URI)/$(LIVE_PAGE)

open/dev:
	open $(BASE_URI)/$(DEV_PAGE)

diff:
	@-bash -c 'diff -u <(mget -q $(MANTA_DIR)/$(LIVE_PAGE)) $(LIVE_PAGE)'

diff/dev:
	@-bash -c 'diff -u <(mget -q $(MANTA_DIR)/$(DEV_PAGE)) $(LIVE_PAGE)'

help:
	@echo "The following subcommands are available"
	@echo ""
	@echo "... publish (default)    push $(LIVE_PAGE) to $(MANTA_DIR)/$(LIVE_PAGE)"
	@echo "... publish/dev          push $(LIVE_PAGE) to $(MANTA_DIR)/$(DEV_PAGE)"
	@echo "... diff                 diff $(LIVE_PAGE) locally with $(MANTA_DIR)/$(LIVE_PAGE) remotely"
	@echo "... diff/dev             diff $(LIVE_PAGE) locally with $(MANTA_DIR)/$(DEV_PAGE) remotely"
	@echo "... open                 open $(BASE_URI)/$(LIVE_PAGE)"
	@echo "... open/dev             open $(BASE_URI)/$(DEV_PAGE)"

.PHONY: publish publish/dev diff diff/dev open open/dev help
