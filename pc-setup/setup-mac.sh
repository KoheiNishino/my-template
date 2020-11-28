#!bin/zsh

# -----------------
# Dock
# -----------------

# Dockを自動的に隠す
defaults write com.apple.dock autohide -bool true

# Dockを再起動
killall Dock

# -----------------
# Finder
# -----------------

# デフォルトはカラムビュー表示
defaults write com.apple.finder FXPreferredViewStyle clmv

# 隠しファイル/フォルダを表示
defaults write com.apple.finder AppleShowAllFiles -bool true

# タイトルバーにフルパスを表示
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# ステータスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true

# パスバーを表示
defaults write com.apple.finder ShowPathbar -bool true

# 拡張子を表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finderを再起動
killall Finder

# -----------------
# MenuBar
# -----------------

# バッテリー残量を％表記に
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# 日付と時刻のフォーマット（24時間表示、秒表示なし、日付・曜日を表示）
defaults write com.apple.menuextra.clock DateFormat -string "M月d日(EEE)  H:mm"

# -----------------
# ScreenCapture
# -----------------

# スクリーンショットの保存場所をPictureに
defaults write com.apple.screencapture location ~/Pictures/

# スクリーンショットの接頭辞をSSに
defaults write com.apple.screencapture name SS

# -----------------
# Siri
# -----------------

# "Siriに頼む"を有効化する：チェックを外す
defaults write com.apple.Siri StatusMenuVisible -bool false

# メニューバーにSiriを表示：チェックを外す
defaults write com.apple.Siri VoiceTriggerUserEnbaled -bool false

# -----------------
# Other
# -----------------

# ネットワークフォルダに.DS_Storeを作らない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# GoogleのDNSを一括で設定
networksetup -setdnsservers Wi-Fi 2001:4860:4860::8844 2001:4860:4860::8888 8.8.4.4 8.8.8.8

# パーミッションエラー対策（ex. 追加ユーザーでのHomebrew実行時など）
sudo chown -R $(whoami):admin /usr/local/*
sudo chmod -R g+w /usr/local/*