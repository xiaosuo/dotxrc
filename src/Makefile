TARGETS = \
	  .bashrc \
	  .vimrc \
	  .gitconfig \
	  .vim

install:
	for f in ${TARGETS}; do \
		if test -e ~/$$f; then \
			if test -e ~/$$f.bak; then \
				rm ~/$$f; \
			else \
				mv ~/$$f ~/$$f.bak; \
			fi \
		fi; \
		ln -s $$(pwd)/$$f ~/$$f; \
	done
