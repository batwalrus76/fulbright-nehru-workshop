CURR_DIR = .

build-slides: $(CURR_DIR) /*
	find . -type f -name "lecture-slides-*.md" -exec bash -c "marp --pptx \"{}\"" \;

clean-slides:
	rm -rf *.pptx	