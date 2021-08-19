# 概要

MateriApps LIVE!の環境でQuantum ESPRESSO(ver 6.7)を用いてCuのフェルミ面を描くためのスクリプトです。

# 使い方

Cuの擬ポテンシャルをQuantum ESPRESSOのサイトからダウンロード

```
sh download.sh
```

自己無撞着計算を実行

```
pw.x < Cu.scf.in
```

フェルミ面をかく

```
fermisurfer vfermi.frmsf
```
