# Cookpad 1day Internship: Ruby Programming Course

# インターンシップ事前準備について

1dayインターンシップでは、プログラミング言語Rubyをつかって、インターンシップを進めていきます。
参加者のみなさんは、事前に環境設定をおこなったうえで、インターンシップへ参加をしてください。

なお、UNIXやLinuxの環境に慣れている方、Rubyの開発に慣れている方は、特に下記の通りの準備でなくても問題ありません。

## 作業環境の準備

インターンシップの準備にあたって、作業環境をリポジトリから取得してください。

```
> git clone git@github.com:cookpad/cookpad-internship-1day-ruby
```

## 仮想環境（Vagrant）のセットアップ

### 仮想環境のインストール

VirtualBoxを[公式ダウンロードページ](http://www.oracle.com/technetwork/server-storage/virtualbox/downloads/index.html)からダウンロードを行ない、インストールしてください。macOS High Sierraでは、インストールのときにエラーがでるときがあります。環境設定の「セキュリティとプライバシー」から実行許可を与えてください。

次に、Vagrantを[公式ダウンロードページ](https://www.vagrantup.com/downloads.html)からダウンロードして、インストールしてください。

### 仮想環境へのログイン

コマンドラインでさきほど取得したリポジトリへと移動し、`vagrant up`を実行します。仮想環境のイメージが自動でダウンロードされ、仮想環境が起動します。`vagrant ssh`コマンドで仮想環にログインをすることができます。

```
> cd cookpad-internship-1day-ruby
> vagrant up
> vagrant ssh
```

以下の作業は仮想環境へログインした状態で行なってください。

## Ruby のセットアップ

### Rubyのインストール

`apt`コマンドを利用して、Rubyをセットアップしてください。

```
$ sudo apt update
$ sudo apt install ruby ruby-bundler
```

### Rubyライブラリのインストール

ホームディレクトリに internship ディレクトリがあるのでそこへ移動し、`bundle`コマンドを実行してください。Rubyのライブラリが自動でインストールされます。

```
$ cd internship
$ bundle
```

## 動作確認

下記を実行し、`ruby tests/run_test.rb`を実行してください。下記のようにエラーが表示されなければ、セットアップは完了です。

```
$ ruby tests/run_test.rb
Loaded suite tests
Started
..

Finished in 0.001966559 seconds.
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
2 tests, 2 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
100% passed
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1017.00 tests/s, 1017.00 assertions/s
```
