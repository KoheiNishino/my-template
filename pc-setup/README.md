# Mac セットアップ

## システム環境設定

- 一般
  - 外観モード：ダーク
  - スクロールバー：スクロール時に表示
- アクセシビリティ
  - ポインタコントロール
    - トラックパッドオプション
      - 3 本指のドラッグ：許可
- セキュリティとプライバシー
  - スリープとスクリーンセーバの解除にパスワードを要求：15 分
  - Mac App Store と確認済みの開発元からのアプリケーションを許可：チェックを入れる
  - FileVault：オン
  - ファイアウォール：オン
- キーボード
  - キーボード
    - キーのリピート：最大
    - リピート入力認識までの時間：最大
    - 修飾キー
      - CapsLock キー：Control キー
- トラックパッド
  - すべてにチェックを入れる
  - 軌跡の速さ：最大
- ディスプレイ
  - 解像度：変更（スペースを最大）
- その他
  - ターミナルを起動して該当のフォルダへ移動後、下記コマンドを実行。  
    `sh setup-mac.sh`

## アプリケーションのインストール（Homebrew）

1. ターミナルを起動して下記コマンドを実行し、Homebrew をインストールする。  
   `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
1. ~/.Brewfile を配置して下記コマンドを実行し、各アプリケーションをインストールする。  
   `brew bundle --global`
1. 設定完了後、下記操作を実施。
   - キーボード > ショートカットにて、Spotlight を無効化。
   - キーボード > 入力ソースにて、入力ソースを Google 日本語入力のみに変更。
   - Starship 用に「[Fira Code Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode)」をダウンロードしてインストールする。

## zsh の設定

1. .zshrc と.zsh/completion(入力補完用)をホームディレクトリに配置する。
1. 下記コマンドを実行して設定を反映させる。  
   `source ~/.zshrc`

## iTerm2 の設定

1. iTerm2 を起動して Preferences > Profiles を開き、Other Actions… > Import JSON Profiles…を選択する。
1. iTerm2Profile.json を選択して設定をインポートする。

## [anyenv](https://github.com/anyenv/anyenv) の設定

1. 下記コマンドを順番に実行し、anyenv を初期化する。
   - `anyenv init`
   - `anyenv install --init`
1. 下記コマンドを順番に実行し、プラグインをインストールする。
   - `mkdir -p $(anyenv root)/plugins`
   - `git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update`
   - `git clone https://github.com/znz/anyenv-git.git $(anyenv root)/plugins/anyenv-git`
1. シェルを初期化する。
1. 各バージョン管理ツールをインストールする。（※ 言語のバージョン等は状況に応じて必要なものをインストールする。）
   - `anyenv install rbenv`
   - `anyenv install pyenv`
   - `anyenv install nodenv`

## VisualStudioCode の設定

1. 拡張機能「Settings Sync」をインストールして、GitHub でログインする。
1. 設定や拡張機能を同期する。
