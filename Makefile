.PHONY : install-tools install-marp install-marp-diagrams-plugin clean-slides build-slides

install-tools: install-marp install-marp-diagrams-plugin

install-marp:
	npm install marp

install-marp-diagrams-plugin:
	git clone https://gist.github.com/8931dd98769bcc1c5b4b92fd1234a190.git marp-diagrams && pushd marp-diagrams && npm i && popd

clean-slides: 
	find . -type d -name "[0-9]*" -not -path '*/.*' -exec bash -c "pushd \"{}\" && make clean-slides" \;

build-slides:
	find . -type d -name "[0-9]*" -not -path '*/.*' -exec bash -c "pushd \"{}\" && make build-slides" \;