BINDIR = /usr/local/bin
LIBDIR = /usr/local/lib

install:
	mkdir -p build
	mkdir -p $(LIBDIR)/commitmessage_firstly
	cp src/show_top_level $(BINDIR)/show_top_level
	cp src/get_msg_by_branch $(BINDIR)/get_msg_by_branch
	cp src/git_commit_from_msg $(BINDIR)/git_commit_from_msg
	cp src/set_commitmsg $(BINDIR)/set_commitmsg
	cp src/show_current_commit_msg $(BINDIR)/show_current_commit_msg
	cp src/check_post-commit $(BINDIR)/check_post-commit
	echo "postCommitSource=$(LIBDIR)" > src/libpath
	cat src/shebang src/libpath src/hooks > build/add_post_commit_hooks
	chmod +x build/add_post_commit_hooks
	cp build/add_post_commit_hooks $(BINDIR)/add_post_commit_hooks
	cp src/post-commit $(LIBDIR)/commitmessage_firstly/post-commit

clean:
	rm $(BINDIR)/show_top_level
	rm $(BINDIR)/get_msg_by_branch
	rm $(BINDIR)/git_commit_from_msg
	rm $(BINDIR)/set_commitmsg
	rm $(BINDIR)/show_current_commit_msg
	rm $(BINDIR)/add_post_commit_hooks
	rm -rf $(LIBDIR)/commitmessage_firstly
	rm -rf build/
