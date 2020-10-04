# 概要
機械学習を利用するために必要なライブラリをインストールしたコンテナイメージを作成するためのDockerfileです。
Tensorflow, Pytorchは容量が大きいので必要がなければDockerfileでコメントアウトしてください。

## イメージバージョン
v0.0.0<br>
※サンプルプログラムの追加はマイナーバージョンで対応します。

## ベースOS
ubntu20.04

# インストール済みツール
2020/10/1現在のバージョン情報です。イメージビルドのタイミングによってはバージョンが異なる場合があります。
- python 3.8.2
- scikit-learn 0.23.2
- pandas 1.1.2
- numpy 1.18.5
- jupyterlab 2.2.8
- pycaret 2.1.2
- lightgbm 3.0.0
- xgboost 1.2.0
- scipyt 1.5.2
- matplotlib 3.3.2
- tensorflow 2.3.1
- pytorch 1.6.0
- pyocr 0.7.2
- opencv-python 4.4.0.44
- optuna 2.1.0

# サンプルプログラム
Notebookで書いたPythonの機械学習用ライブラリのサンプルプログラムを/home/samples/に用意していますので、参考になれば幸いです。サンプルは都度追加していきます。

# DockerHub
DockerfileをビルドしたイメージはDockerHubにありますので、そちらからもコンテナイメージを使用できます。
[DockerHubのリンク](https://hub.docker.com/repository/docker/kuboshu83/pythonml)