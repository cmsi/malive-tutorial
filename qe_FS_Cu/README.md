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

バンド図を書くために細かい波数でエネルギーを計算

```
pw.x < Cu.nscf.in
```

バンドの情報を抽出

```
bands.x < Cu.band.in
```

バンド図を表示

```
gnuplot -persisten plot.gp
```

# 並列計算について

CPUのコアが複数ある場合、MPI並列を用いると計算が速くなります。ターミナルで最初に一回、

```
export OMP_NUM_THREADS=1
```

を実行します。あとは同じターミナルで、例えば

```
mpirun -np 4 pw.x < Cu.scf.in
```

を行うと速くされます。ここで4は並列度です。コンピュータのCPUのコア数の応じて値を変えてください。
