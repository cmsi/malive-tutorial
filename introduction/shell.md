# UNIX入門

## シェル

### UNIX (Linux)の操作の基本的なスタイル

UNIXでは、ターミナルを開き、その中でキーボードで「コマンド」と呼ばれる文字列を入力し、実行していく。
これをCUI (Character User Interface)と呼ぶ。
可視化ツールなどではGUI (Graphical User Interface=マウスを使った操作)に対応しているものも多いが、シミュレーションソフトウェアなどはCUIが主流である。

### なぜCUIを使うのか？

- GUIが登場する以前から使われている
- プログラム開発などGUI向きではない作業も多い
- GUIではいろいろな制約がある。提供されているツール・プログラムを最大限活用するにはCUIを使う必要あり
- 慣れるとGUIよりも速い操作が可能
- デスクトップPCからスパコンまで統一的に利用可能
- 遠隔地にあるコンピュータをネットワークを通じて透過的に利用することができる(例: 物性研スパコン、富岳コンピュータ)

### シェルの役割

入力されたコマンドを解釈し適切なプログラムを実行するのがシェル(shell)の役割

ターミナル(MateriApps LIVE!ではLX Terminal)を開くと 

```bash
user@malive:~$
```

と表示されている。
この文字列は「プロンプト」と呼ばれ、シェルがユーザからの入力を待っている状態であることを示している。
プロンプト中の`user`はユーザ名、`malive`はホスト名(コンピュータ名)、`~`は今現在の場所(ディレクトリ)を表す。

チュートリアル資料などでは、プロンプトを省略して単に`$`と書くことも多い。
行の先頭に`$`がある場合、プロンプトを表しているので入力する必要はない。
最後にreturnあるいはenterキーを押すと入力内容が解釈・実行される。

また、`Ctrl-A`は、「コントロールキー」を**押したまま**「A」のキーを押すことを意味する。`ESC-C`の場合、「エスケープキー」を**一度押して離してから**「C」のキーを押す。

[注: プロンプトの表示は自分でカスタマイズすることもできる]

[注: プロンプトで`$`の代わりに`#`が表示されている時は、"superuser" (コンピュータに対してどのような操作でもできる管理者)として作業していること表す。superuserになるには`su`コマンドを使う]

## コマンドと引数

`date`と入力して最後にreturnあるいはenterキーを押す。
`date`という名前のプログラムが実行され、(期待通り)現在の日時が表示される。

```bash
$ date
Tue 17 Aug 2021 05:14:47 PM JST
```

コマンドには引数を指定することもできる。

```bash
$ echo hello
hello
$ echo this is my pen
this is my pen
```

`echo`は引数として受け取った文字列を順番に出力するだけのプログラムである。
最初の`echo`がプログラム名、2番目以降は引数(ひきすう＝プログラムに渡されるパラメータ)である。

コマンド入力はスペース(空白)で分割されて解釈される。
連続する2つ以上のスペースは1つのスペースと等価である。

```bash
$ echo this is my pen
this is my pen
$ echo this is  my pen
this is my pen
```

この例ではどちらも`this`, `is`, `my`, `pen`の4つの文字列がプログラム`echo`に渡される。
スペースも含めて渡したいときは二重引用符等で囲み、一つの長い文字列として渡す。

```
$ echo "white space    matters"
white space    matters
```

### シェルはプログラムをどのように探すか

シェルはコマンド名が与えれられると`PATH`という名前の変数(環境変数と呼ぶ)に指定されている場所(パスと呼ぶ)を順番に探す。
環境変数名は大文字を使うことが多い。
環境変数の値を参照するには先頭に`$`を付ける。

```
$ echo $PATH
/home/user/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games
$ which date
/usr/bin/date
```

プログラムの絶対パスあるいは相対パスを指定することで、環境変数`PATH`以外の場所にあるプログラムを実行することもできる。

### 「パス」とは

パスとはディレクトリ(フォルダ)の木構造を / (スラッシュ)で区切って表したものである

例: `/usr/bin/date`

最初の`/`はルート(ディレクトリ)と呼ばれ、一番大本のディレクトリを指す。
`/usr/bin/date`は`/`(ルート)の下の`usr`の下の`bin`の下の `date`を表す。

`/`で始まるパスを「絶対パス」と呼ぶ。
それ以外のパスを相対パスと呼び、現在いる場所(カレントワーキングディレクトリ)からの相対的なパスを表す。カレントワーキングディレクトリは`pwd` (print working directory)コマンドで表示できる。

```bash
$ pwd
/home/user
```

UNIXではあらかじめいくつかの特別なパスが定義されている

- `/`: ルートディレクトリ
- `.`: → カレントワーキングディレクトリ
-  `..`: 一つ階層が上のディレクトリ
- `~`: ホームディレクトリ(ターミナルを開いた時に最初にいるディレクトリ)

## 基本コマンド

### ディレクトリの移動 (cdコマンド)

```
user@malive:~$ pwd
/home/user
user@malive:~$ cd ..
user@malive:/home$ pwd
/home
user@malive:/home$ cd ..
user@malive:/$ pwd
/
```

ここでは、プロンプトもあらわに書いた。ディレクトリを移動すると、プロンプトのカレントディレクトリを示す部分も変化することが分かる。引数には絶対パスあるいは相対パスを指定する。引数がない場合にはホームディレクトリに移動する。

```
user@malive:/$ cd ~
user@malive:~$ pwd
/home/user
user@malive:~$ cd /
user@malive:/$ pwd
/
user@malive:/$ cd
user@malive:~$ pwd
/home/user
```

### ディレクトリの内容表示 (lsコマンド)

```
$ ls
Desktop    Downloads  Music     Public     Videos
Documents  hello.txt  Pictures  Templates
$ ls /
bin   home            lib32       media  root  sys  vmlinuz
boot  initrd.img      lib64       mnt    run   tmp  vmlinuz.old
dev   initrd.img.old  libx32      opt    sbin  usr
etc   lib             lost+found  proc   srv   var
```

引数に内容を表示したいディレクトリ名を絶対パスあるいは相対パスで指定する。引数なしで`ls`コマンドを実行すると、カレントワーキングディレクトリの内容が表示される。

以下のように実行すると、より詳しい情報が出力される

```
$ ls -l /
total 57
lrwxrwxrwx   1 root root     7 May 18 11:56 bin -> usr/bin
drwxr-xr-x   4 root root  1024 May 18 12:16 boot
(中略)
drwxr-xr-x  11 root root  4096 May 18 11:56 var
lrwxrwxrwx   1 root root    28 May 18 11:57 vmlinuz -> boot/vmlinuz-4.19.0-16-amd64
lrwxrwxrwx   1 root root    28 May 18 11:57 vmlinuz.old -> boot/vmlinuz-4.19.0-16-amd64
```

引数のうちマイナス記号で始まるもの(この例では`-l`)は「オプション」と呼ばれる。オプションを指定することでプログラムの動作を変えることができる。`ls`コマンドに`-l` (longの意)オプションを指定すると、ファイルのより詳細な情報を出力する。

```bash
$ date
Tue 17 Aug 2021 05:15:09 PM JST
$ date -u
Tue 17 Aug 2021 08:15:11 AM UTC
$ date --help
```

`date`コマンドに`-u`オプションを渡すと、日時をUTCで表示することができる。`--help`オプション(あるいは`-h`)を渡すと、そのコマンドの使用方法が表示される。

### ファイルの操作

- `mv`: ファイル名の変更・移動
- `cp`: ファイルのコピー
- `cp -r`: ディレクトリ(とその中身)のコピー
- `mkdir`: ディレクトリの作成
- `rm`: ファイルの削除
- `rm -r`: ディレクトリ(その内容も含め)の削除

[注: UNIXではいったん削除したファイルやディレクトリの復旧はできないので注意]

### ファイルの中身の表示

- `cat`: ファイル全体を表示。長いファイルは表示が流れていってしまう
- `less`: 1画面分を表示。矢印キーあるいは`j`, `k`, `Ctrl-P`, `Ctrl-N`などでスクロール可能

### ターミナル画面のクリア

- `clear`コマンド
- `Ctrl-L`

## リダイレクション・パイプ

基本的にUNIXのプログラム(コマンド)は、「標準入力」(キーボード入力)から入力を受け取り、結果を「標準出力」(画面)に出力する。
リダイレクション・パイプと呼ばれる仕組みによりこの動作を変更することができる。

- `<`: ファイルからの入力
- `>`: ファイルへの出力
- `|`: プログラムの出力を別のプログラムの入力に接続(パイプ)

```bash
$ echo hello > hello.txt
$ cat hello.txt
hello
$ cat < hello.txt
hello
$ cat < hello.txt > hello2.txt
$ cat hello2.txt
hello
$ ls -l / | tail -n1
```

パイプを使うことで複数のプログラムを組み合わせて使うことが可能となる。

```
$ pw.x < GaAs.scf.in | tee GaAs.scf.out
```

この例では`pw.x` (Quantum ESPRESSO)に`GaAs.scf.in`の中身を入力として渡し、出力を`tee`プログラムに渡している。`tee`は入力内容を引数で指定されたファイルに保存すると同時に標準出力(画面)に出力する。


## 補完・履歴・検索

- コマンド入力中に「tabキー」を叩くと、コマンド名やパスを補完してくれる
- `history`コマンド: コマンド履歴の表示
- `!`+番号: 履歴中のコマンドを再度実行
- `Ctrl-P`あるいは「↑」(矢印キー): コマンド履歴を順に遡る
- `Ctrl-N`あるいは「↓」(矢印キー): コマンド履歴を順に下る
- `Ctrl-R` (reverse incremental search): 履歴を検索する。文字を1文字入力するたびに、履歴中でそこまでが一致しているコマンドが表示される。検索中にさらに`Ctrl-R`を押すと、一致するコマンド履歴を遡ることができる

## Copy & Paste

ターミナル上で表示されている文字列のcopy & paste

- copy: 右クリック→「Copy」(あるいは「shift+Ctrl+C」)
-  paste: 右クリック→「Paste」(あるいは「shift+Ctrl+V」)


## エディター

MateriApps LIVE!では、`emacs`, `vim`, `nano`などいろいろな種類のエディターが利用可能。好みのものを使ってよいが、ここでは`mousepad`という名前のエディタを紹介する

### mousepad

- ファイルの編集開始: `mousepad ファイル名`
- 矢印キーでの移動・キー入力
- 保存: 「Save」メニュー、あるいは`Ctrl+S`
- 終了: 「Quit」メニュー、あるいは`Ctrl+Q`

## シェルスクリプト

シェルで実行したい一連のコマンドを(エディタを使って)ファイル(シェルスクリプトと呼ぶ)に記述し、まとめて実行することができる。
シェルスクリプトのファイル名は何でもよい。
実行には`sh`コマンドを使う。

```
$ cat myscript
date
echo "test script"
$ sh myscript
(省略)
```
