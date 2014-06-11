prefix := /usr

dummy:
	# A dummy target

install:
	install -D -m 0755 db-backup $(destdir)$(prefix)/bin/db-backup
