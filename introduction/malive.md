# MateriApps LIVE!のインストール

Author: Synge Todo <<wistaria@phys.s.u-tokyo.ac.jp>>  
Last modified: Tue, 17 Aug 2021 20:51:06 +0900

このドキュメントでは、[MateriApps LIVE!](https://cmsi.github.io/MateriAppsLive/)のインストール方法について説明する。このドキュメントの最新版は https://github.com/cmsi/malive-tutorial/blob/master/introduction/malive.md にて公開されている。

## Table of contents

* [MateriAppsについて](#materiappsについて)
* [MateriApps LIVE!とは？](#materiapps-liveとは？)
* [MateriApps LIVE!のインストール](#materiapps-liveのインストール)
* [MateriApps LIVE!の起動](#materiapps-liveの起動)
* [追加の設定](#追加の設定)
* [もっと大規模な計算がしたい？](#もっと大規模な計算がしたい？)
* [参考文献](#参考文献)

## MateriAppsについて

参照: [MateriApps LIVE!の設定](https://github.com/cmsi/malive-tutorial/blob/master/setup/setup.pdf) pp.2-5

## MateriApps LIVE!とは

参照: [MateriApps LIVE!の設定](https://github.com/cmsi/malive-tutorial/blob/master/setup/setup.pdf) pp.6-7

* 仮想マシン上で直接ブートできる Live Linux
  * Windows、Mac などで利用可
  * インストール作業なしで物質科学アプリを実行できる
* バージョン3.3公開 (2021年5月)
* MateriAppsで紹介している公開アプリ・ツールを収録
  * abinit, AkaiKKR, ALAMODE, ALPS, CONQUEST, Feram, DCore, DSQSS, HΦ, LAMMPS, mVMC,                                                          OCTA, OpenMX, Quantum ESPRESSO, PHYSBO,                                               SMASH, TeNeS, xTAPP 等
  * OVITO, ParaView, Tapioca, VESTA, VMD, XCrysDen…
  * CASINO, GAMESS, VMDは自動インストーラーあり
* MateriApps LIVE! サイトからダウンロード可能
* 2013年7月以来、12,000+コピーを配布

### 用語解説

  * ホスト (ホストOS) : もともと動いている OS (Windows、Mac OS X など)のこと
  * 仮想マシン (ゲストOS) : VirtualBox の中で動いている OS (= MateriApps LIVE!)

## MateriApps LIVE!のインストール

参照: [Web講習会(オンラインチュートリアル)のための準備](https://github.com/cmsi/MateriAppsLive/wiki/OnlineTutorial)

* PCの確認
  * Windows, macOS, Linuxなど, VirtualBoxが動作するx86 PCが必要
     * 注意: Apple M1チップ搭載のMacではVirtualBoxは動作しない
  * Windowsの場合、あらかじめCPUの仮想化機能(VT-x)がオンになっているかどうかを確認する
* 必要なファイルのダウンロード
  * 以下のいずれかから MateriAppsLive-3.3.zip をダウンロード
     * DropBox: https://www.dropbox.com/s/d597japr0gxlky5/MateriAppsLive-3.3.zip?dl=1
     * Google Drive: https://drive.google.com/file/d/1639lq1P03AnNjFjo9ZzQcoz0_ZKe6MIE
     * SourceForge: https://sourceforge.net/projects/materiappslive/files/Release-3.3/MateriAppsLive-3.3.zip/download
* VirtualBoxのインストール
  * ダウンロードしたzipファイルを展開すると、VirtualBoxインストーラが含まれている。Windowsではexeファイル、macOSではdmgをダブルクリックしてインストールを実行する
  * macOSではOSのセキュリティー機能により、VirtualBoxが正しくインストールできない場合がある。インストール後、「システム環境設定」の「セキュリティーとプライバシー」を開いて、Oracleのソフトウェアがブロックされている場合には、「許可」した後、VirtualBoxを再インストールする (参考: https://github.com/cmsi/MateriAppsLive/wiki/FAQ#virtualbox-1)
* MateriApps LIVE!のインポート
  * 配布ファイルに含まれているMateriAppsLive-3.3-amd64.ovaをダブルクリック
  * VirtualBoxが起動してインポート画面が開くので「インポート」ボタンを押す
  * 2〜3分でインポートが完了する。VirtualBoxマネージャーの仮想マシン一覧にMateriAppsLive-3.3-amd64が表示されていることを確認する

## MateriApps LIVE!の起動

参照: [MateriApps LIVE!の設定](https://github.com/cmsi/malive-tutorial/blob/master/setup/setup.pdf) pp. 12-13

* VirtualBoxマネージャーの仮想マシン一覧からMateriAppsLive-3.3-amd64を選択し「起動」
  * 新しいウィンドウが開き、MateriApps LIVE!が起動
  * ユーザ名: **user** パスワード: **live** でログインする
* スタートメニュー → System Tools → LXTerminalでターミナルが立ち上がる
* 仮想マシンの終了 (シャットダウン)
  * スタートメニュー → Logout → Shutdown

## 追加の設定

参照: [MateriApps LIVE!の設定](https://github.com/cmsi/malive-tutorial/blob/master/setup/setup.pdf) pp. 14-15

### キーボード

* 日本語キーボード(「＠」が「P」の右にある)を使っている場合
  * スタートメニュー → System Tools → Switch to Japanese Keyboard Layout
  * 「＠」が正しく入力できることを確認

### 仮想マシンウインドウの解像度・スケールの変更

* 解像度 (画素数): デフォルトでは「800 x 600」
* スケール(画素密度):  デフォルトでは「200%」
* 解像度とスケールはホストOSの「ビュー」メニュー ⇒「仮想スクリーン 1」から変更できる
* VESTA, OVITO, ParaViewなどの可視化ソフトを使う場合は解像度を「1024 x 768」以上に設定するとよい
* 文字が小さくて見にくい場合にはスケールを大きくする

### ファイル共有: ホストOSと仮想マシン間のファイル共有

* 仮想マシンをいったんシャットダウン
* VirtualBox マネージャー画面で MateriAppsLive-* を選択し「設定」
* 「共有フォルダー」タブを開き、右側の「+」をクリック
* 「フォルダーのパス」の右側の「ｖ」マークをクリックし、「その他」を選択。共有するフォルダーを選択、「自動マウント」をチェックし「OK」
* 仮想マシンを起動。上で選択したフォルダが、/media/sf_... の下に見える

### ISOイメージファイル(*.iso)の中身を仮想マシンから参照する

* 仮想マシンウインドウの枠の下にあるCD-ROMのアイコンをクリック、「Choose disk image...」を選択し、ISOイメージファイルを開く
* ISOイメージファイルの中身が、/media/cdrom0 の下に見える

## もっと大規模な計算がしたい？

参照: [MateriApps LIVE!の設定](https://github.com/cmsi/malive-tutorial/blob/master/setup/setup.pdf) p. 9

* Debian や Ubuntu がインストールされた Linux ワークステーション
  * MateriApps LIVE! の Debian Package が利用可能
  * https://github.com/cmsi/MateriAppsLive/wiki/UsingMateriAppsInDebian
  * (Google Colabにもインストール可)
* PCクラスタ、クラウド、物性研や情報基盤センターのスパコン、富岳など
  * MateriApps Installer を利用 https://ma.issp.u-tokyo.ac.jp/app/268
  * 2020年度 東大物性研ソフトウェア開発・高度化プロジェクトとして、リニューアル

## 参考文献

1. Web講習会(オンラインチュートリアル)のための準備: 
 https://github.com/cmsi/MateriAppsLive/wiki/OnlineTutorial

1. MateriApps LIVE!の設定: https://github.com/cmsi/malive-tutorial/blob/master/setup/setup.pdf

1.  MateriApps LIVE! Users Forum: https://github.com/cmsi/MateriAppsLive-forum/wiki