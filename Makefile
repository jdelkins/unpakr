
test: reset
	./unpakr -l unpakr.log -L debug -u test
	./unpakr -l unpakr.log -L debug -u test

reset:
	mv test/*.{rar,zip} . && rm -rf test && mkdir test && mv *.{rar,zip} test/
	rm -f unpakr.log

.PHONY: test reset
