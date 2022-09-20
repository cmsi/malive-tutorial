# MateriApps LIVE!のインストール

Author: Synge Todo <<wistaria@phys.s.u-tokyo.ac.jp>>  
Last modified: Mon, 19 Sep 2022 19:47:43 +0900

このドキュメントでは、[MateriApps LIVE!](https://cmsi.github.io/MateriAppsLive/)のインストール方法について説明する。このドキュメントの最新版は [https://github.com/cmsi/malive-tutorial/blob/master/introduction/malive.md](https://github.com/cmsi/malive-tutorial/blob/master/introduction/malive.md) にて公開されている。

## Table of contents

* [MateriAppsについて](#materiappsについて)
* [MateriApps LIVE!のインストール](#materiapps-liveのインストール)
* [参考文献](#参考文献)

## MateriAppsについて

参照: [MateriApps LIVE!の設定](https://github.com/cmsi/malive-tutorial/blob/master/setup/setup.pdf) pp.2-5

## MateriApps LIVE!のインストール

参照: [MateriApps LIVE!の設定](https://github.com/cmsi/malive-tutorial/blob/master/setup/setup.pdf) pp.6-9

### 二種類のMateriApps LIVE!

* MateriApps LIVE! VirtualBox版
  * 仮想マシン(VirtualBox)上で動作する
  * Windows、Intel Macなどで利用可
* MateriApps LIVE! Docker版 (バージョン4.0以降)
  *  Dockerコンテナとして動作する
  * Apple Silicon (M1/M2)/Intel Macで利用可
  * Intel Windowsでも動作するはずだが、スクリプト未整備

### 用語解説

* ホスト (ホストOS) : もともと動いている OS (Windows、macOS など)のこと
* 仮想マシン (ゲストOS) : VirtualBox/Dockerの中で動いている OS (= MateriApps LIVE!)

### MateriApps LIVE! VirtualBox版 - インストール

参照: [Web講習会(オンラインチュートリアル)のための準備](https://github.com/cmsi/MateriAppsLive/wiki/OnlineTutorial)

参照: [MateriApps LIVE!の設定](https://github.com/cmsi/malive-tutorial/blob/master/setup/setup.pdf) pp.11-12

* PCの確認
  * Windows, Intel Mac, Linuxなど, VirtualBoxが動作するx86 PCが必要
  * Windowsの場合、あらかじめCPUの仮想化機能(VT-x)がオンになっているかどうかを確認する
* 必要なファイルのダウンロード
* VirtualBoxのインストール
* MateriApps LIVE!のインポート

### MateriApps LIVE! VirtualBox版 - 起動

参照: [MateriApps LIVE!の設定](https://github.com/cmsi/malive-tutorial/blob/master/setup/setup.pdf) pp.13-14

* VirtualBoxマネージャーの仮想マシン一覧からMateriAppsLive-3.3-amd64を選択し「起動」
* スタートメニュー → System Tools → LXTerminalでターミナルが立ち上がる
* 仮想マシンの終了 (シャットダウン)

### MateriApps LIVE! VirtualBox版 - 追加の設定

参照: [MateriApps LIVE!の設定](https://github.com/cmsi/malive-tutorial/blob/master/setup/setup.pdf) pp.15-

* キーボード
* 仮想マシンウインドウの解像度・スケールの変更
* ファイル共有: ホストOSと仮想マシン間のファイル共有

### MateriApps LIVE! Docker版 - インストール

参照: [MateriApps LIVE! (Docker版)の起動方法](https://github.com/cmsi/MateriAppsLive/wiki/GettingStartedDocker)

* Docker Desktop for Macのインストール
* XQuartzのインストール
* 起動スクリプトのダウンロード
* MateriApps LIVE!の実行

### MateriApps LIVE! Docker版 - 追加の設定

* MateriApps LIVE!とのファイルのやりとり

## 参考文献

1. Web講習会(オンラインチュートリアル)のための準備: 
 [https://github.com/cmsi/MateriAppsLive/wiki/OnlineTutorial](https://github.com/cmsi/MateriAppsLive/wiki/OnlineTutorial)

2. MateriApps LIVE!の設定: [https://github.com/cmsi/malive-tutorial/blob/master/setup/setup.pdf](https://github.com/cmsi/malive-tutorial/blob/master/setup/setup.pdf)

3. MateriApps LIVE! (Docker版)の起動方法: [https://github.com/cmsi/MateriAppsLive/wiki/GettingStartedDocker](https://github.com/cmsi/MateriAppsLive/wiki/GettingStartedDocker)

4.  MateriApps LIVE! Users Forum: [https://github.com/cmsi/MateriAppsLive-forum/wiki](https://github.com/cmsi/MateriAppsLive-forum/wiki)