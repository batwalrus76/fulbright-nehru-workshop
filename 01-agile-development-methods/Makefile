.PHONY : all clean-slides build-slides clean-diagrams build-diagrams

CURR_DIR = .

build-slides: $(CURR_DIR) /*
	find . -type f -name "lecture-slides-*.md" -exec bash -c "marp -c ../marp-diagrams/marp.config.js --allow-local-files --pptx \"{}\"" \;

clean-slides:
	rm -rf *.pptx

all: clean-slides build-slides