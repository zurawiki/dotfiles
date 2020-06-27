#!/usr/bin/env bash
set -euo pipefail

# Xcode specific settings

# Trim trailing whitespace
defaults write com.apple.dt.Xcode DVTTextEditorTrimTrailingWhitespace -bool true

# Trim whitespace only lines
defaults write com.apple.dt.Xcode DVTTextEditorTrimWhitespaceOnlyLines -bool true

# Show invisible characters
defaults write com.apple.dt.Xcode DVTTextShowInvisibleCharacters -bool true

# Show line numbers
defaults write com.apple.dt.Xcode DVTTextShowLineNumbers -bool true

# Show ruler at 80 chars
defaults write com.apple.dt.Xcode DVTTextShowPageGuide -bool true
defaults write com.apple.dt.Xcode DVTTextPageGuideLocation -int 80

# Enable internal debug menu
defaults write com.apple.dt.Xcode ShowDVTDebugMenu -bool true

# Map ⌃⌘L to show last change for the current line
defaults write com.apple.dt.Xcode NSUserKeyEquivalents -dict-add "Show Last Change For Line" "@^l"

# Map ⇧⌘L to adding cursors to line ends
defaults write com.apple.dt.Xcode NSUserKeyEquivalents -dict-add "Split Selection By Lines" "@\$l"

# Ignore whitespace changes for blame
defaults write com.apple.dt.Xcode DVTDiffSessionIgnoreWhitespaceKey -bool true
