XCODE_USER_TEMPLATES_DIR=~/Library/Developer/Xcode/Templates/File\ Templates
XCODE_USER_SNIPPETS_DIR=~/Library/Developer/Xcode/UserData/CodeSnippets

PREFIX_DIR=Clean\ SwiftUI
TEMPLATES_DIR=CleanSwiftUI

install:
	mkdir -p $(XCODE_USER_TEMPLATES_DIR)
	rm -fR $(XCODE_USER_TEMPLATES_DIR)/$(TEMPLATES_DIR)
	cp -R $(PREFIX_DIR)/$(TEMPLATES_DIR) $(XCODE_USER_TEMPLATES_DIR)

uninstall:
	rm -fR $(XCODE_USER_TEMPLATES_DIR)/$(TEMPLATES_DIR)
