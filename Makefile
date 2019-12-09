.PHONY: src

CC = xelatex
SOURCE_DIR = src
CV_DIR = src/cv
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

src: $(foreach x, cv, $x.pdf)

cv.pdf: $(SOURCE_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(SOURCE_DIR) $<


clean:
	rm -rf $(SOURCE_DIR)/*.pdf
