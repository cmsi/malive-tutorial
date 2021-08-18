# 概要

MateriApps LIVE!の環境でQuantum ESPRESSO(ver 6.7)を用いてSiのフォノン分散を描くためのスクリプトです。

# 使い方

GaとAsの擬ポテンシャルをQuantum ESPRESSOのサイトからダウンロード

```
sh download.sh
```

自己無撞着計算を実行

```
pw.x < Si.scf.in
```

フォノン（力学行列）の計算

```
ph.x < Si.ph.in
```

行列を波数空間表示から実空間表示へ逆フーリエ変換

```
q2r.x < Si.q2r.in
```

フォノンの分散（振動数）を計算

```
matdyn.x < Si.matdyn.in
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
mpirun -np 4 pw.x < Si.scf.in
```

を行うと速くされます。ここで4は並列度です。コンピュータのCPUのコア数の応じて値を変えてください。
