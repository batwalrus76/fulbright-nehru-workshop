install-tools:
	npm install marp

clean-slides: 
	find . -type d -name "[0-9]*" -not -path '*/.*' -exec bash -c "pushd \"{}\" && make clean-slides" \;

build-slides:
	find . -type d -name "[0-9]*" -not -path '*/.*' -exec bash -c "pushd \"{}\" && make build-slides" \;
