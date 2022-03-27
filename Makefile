install-tools:
	npm install

clean-slides: 
	find . -type d -name "[0-9]*" -not -path '*/.*' -exec bash -c "pushd \"{}\" && make clean-slides" \;

build-slides:
	find $(CURR_DIR) -type f -name Makefile -execdir make build-slides \;