# 概要

MateriApps LIVE!の環境でQuantum ESPRESSO(ver 6.7)を用いてGaAsのバンド図を描くためのスクリプトです。

# 使い方

GaとAsの擬ポテンシャルをQuantum ESPRESSOのサイトからダウンロード

```
sh download.sh
```

自己無撞着計算を実行（数分かかる）

```
pw.x < GaAs.scf.in
```

より細かい波数でバンド分散を求める（数分かかる）

```
pw.x < GaAs.nscf.in
```

出力からバンドの情報を抽出

```
bands.x < GaAs.band.in
```

バンドを表示

```
gnuplot -persistent plot.gp
```

# 並列計算について

CPUのコアが複数ある場合、MPI並列を用いると計算が速くなります。ターミナルで最初に一回、

```
export OMP_NUM_THREADS=1
```

を実行します。あとは同じターミナルで、例えば

```
mpirun -np 4 pw.x < GaAs.scf.in
```

を行うと速くされます。ここで4は並列度です。コンピュータのCPUのコア数の応じて値を変えてください。
