.PHONY : install-tools install-marp install-marp-diagrams-plugin clean-slides build-slides run-marp-slides

install-tools: install-marp install-marp-diagrams-plugin

install-marp:
	npm install marp

install-marp-diagrams-plugin:
	git clone https://gist.github.com/8931dd98769bcc1c5b4b92fd1234a190.git marp-diagrams && pushd marp-diagrams && npm i && popd

clean-slides: 
	find . -type d -name "[0-9]*" -not -path '*/.*' -exec bash -c "pushd \"{}\" && make clean-slides" \;

build-slides:
	find . -type d -name "[0-9]*" -not -path '*/.*' -exec bash -c "pushd \"{}\" && make build-slides" \;

build-slides-dir:
	find . -type d -name "[0-9]*" -not -path '*/.*' -exec bash -c "cp -r \"{}\"/*.md slides &>/dev/null" \;
	find . -type d -name "[0-9]*" -not -path '*/.*' -exec bash -c "cp -r \"{}\"/diagrams/* slides/diagrams &>/dev/null" \;
	find . -type d -name "[0-9]*" -not -path '*/.*' -exec bash -c "cp -r \"{}\"/images/* slides/images &>/dev/null" \;

clean-slides-dir:
	rm -rf slides/*.md slides/diagrams/* slides/images/*

run-marp-server:
	bash -c "nohup marp --server slides &" \;

build-exercises-dir:
	find . -type d -name "[0-9]*" -not -path '*/.*' -exec bash -c "cp -r \"{}\"/exercises/*.md exercises &>/dev/null" \;
	find . -type d -name "[0-9]*" -not -path '*/.*' -exec bash -c "cp -r \"{}\"/exercises/diagrams/* exercises/diagrams &>/dev/null" \;
	find . -type d -name "[0-9]*" -not -path '*/.*' -exec bash -c "cp -r \"{}\"/exercises/images/* exercises/images &>/dev/null" \;

clean-exercises-dir:
	rm -rf exercises/*.md exercises/diagrams/* exercises/images/*

run-marp-server:
	bash -c "nohup marp --server . &" \;

run: clean-slides-dir build-slides-dir clean-exercises-dir build-exercises-dir run-marp-server

stop:
	killall -9 node

restart: stop run
