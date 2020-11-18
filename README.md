# 概要
機械学習を利用するために必要なライブラリをインストールしたコンテナイメージを作成するためのDockerfileです。
Tensorflow, Pytorchは容量が大きいので必要がなければDockerfileでコメントアウトしてください。

## [イメージバージョン]
v0.1.0<br>
※サンプルプログラムの追加はマイナーバージョンで対応します。

### 変更点
自然言語処理用にMeCabをインストールした。

## [ベースOS]
ubntu20.04

## [使用例]
使用例のコマンドは全てpythonml:v0.0.0での場合です。適宜使用してるイメージバージョンに置き換えてください。

### Dockerイメージのビルド
build.shを実行するとDockerfileからDockerイメージがビルドされます。

```bash
> ./build.sh
```

### Jupyter Labを使用する
ローカルのカレントディレクトリ下にshare/を作成して以下のコマンドを実行すると、share/を共有した状態でDockerコンテナが起動します。

```bash
> mkdir share
# ローカルの$(pwd)/shareとDockerコンテナ状の/home/shareが同期した状態でコンテナが起動します。
> docker run --rm -it -p 8888:8888 -w /home/share -v $(pwd)/share:/home/share pythonml:[イメージバージョン] /usr/local/bin/jupyter lab --ip=0.0.0.0 --port 8888 --allow-root
```

### コンテナのPythonシェルを起動する
 ```bash
 > docker run --rm -it pythonml:[イメージバージョン]
 ```

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
- mecab

# サンプルプログラム
Notebookで書いたPythonの機械学習用ライブラリのサンプルプログラムを/home/samples/に用意していますので、参考になれば幸いです。サンプルは都度追加していきます。<br>
※サンプルは現在作成中なので、まだリリースされていません。

# DockerHub
DockerfileをビルドしたイメージはDockerHubにありますので、そちらからもコンテナイメージを使用できます。
[DockerHubのリンク](https://hub.docker.com/repository/docker/kuboshu83/pythonml)

# GitHub
DockerfileはGitHubに公開していますので、こちらを参照ください。
[GitHubのリンク](https://github.com/kuboshu/pythonml)