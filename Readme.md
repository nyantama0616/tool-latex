# What is this repository

日本語でlatexを使うためのDocker環境です。

## 前提条件

以下のツールをインストールしておくこと
- docker (docker-desktop)[3][4]
    - Linux利用者は自分で調べて下さい（わざわざLinux使ってるくらいなので、そのくらいできるはず）。
- VS Code [1]
    - Remote Developmentの拡張機能をインストールしておくこと[2]。ただし、sshの設定等は不要で、インストールのみで良い

## 動作確認

以下の環境で動作することを確認している
- Mac
    - M1 Monterey
- Windows
    - Windows 10 (with WSL)

## 利用方法

- VS Codeでこのフォルダを開く[5]
- VS CodeでDev Containerを使ってこのフォルダを開き直す (正確にはDockerコンテナをVS Codeで開き、Dockerコンテナ上のフォルダをVS Codeで編集する)[6]
- docker上のターミナル[7]で、`make new-"folder名"`で各学会、卒論ごとのフォルダを作成する
    - `make new-graduate`でgraduateというフォルダが作成される（graduateフォルダの中にlatex作成に必要なlatexmkrcが作成される）
- 学会や卒論のテンプレートファイル一式をダウンロードし（だいたいHPのどこかにある）、作成したフォルダの中に入れる
- `documentclass`や`usepackage`という記述が含まれた、pdf作成の起点となるtexファイルがあるはずなので、そのファイルの名前を`main.tex`に変更する
- main.texを開く
- main.texを編集する
- texファイルからpdfを作成する
    - main.texを開いているpaneの右上に再生ボタンのようなものがあるので押す。その後main.texを開いているpaneの右上に虫眼鏡のアイコンがあるのでそれを押すとtexファイルを元にPDFが作成され、VS Code右側に生成されたPDFが表示される。一度PDFを生成した後はctl+s（macならcmd+s）で保存した後自動でビルドするようになる。
    - もしくは、VS Code内でターミナルを開き(このReadmeファイルがあるフォルダをDocker内のコンテナのターミナルで開く)、`make comp-"フォルダ名"`と入力すると編集しているmain.texがあるフォルダ内にpdfファイルが生成される。

## 文章校正ルール

- .texlintを書き換えることで、利用している既存文章校正ルールを変更できる
- prh.ymlで独自の文章校正ルールを作成できる

## スニペット

.vscode/latex.code-snippetsを編集することで、texファイル内で使えるスニペットを定義することができる。[8]


## 参考

- [1] [VS Code インストールページ](https://code.visualstudio.com/download)
- [2] [VS Code拡張機能 Remote Developmentのインストール](https://techblog.gmo-ap.jp/2023/04/11/vscode_remote/)
- [3] [Dockerのインストール (Windows)](https://learn.microsoft.com/ja-jp/windows/wsl/tutorials/wsl-containers)
- [4] [Dockerのインストール (Mac)](https://matsuand.github.io/docs.docker.jp.onthefly/desktop/mac/install/)
- [5] [VS Codeの使い方](https://tech-lab.sios.jp/archives/31704)
- [6] [VS Code 拡張機能 Dev Containerの使い方](https://techblog.roxx.co.jp/entry/2021/04/19/132838#:~:text=devcontainer.json-,%E6%9C%80%E5%BE%8C%E3%81%AB,-%E3%80%81devcontainer.json)
- [7] [VS Codeでターミナルを開く方法](https://www.javadrive.jp/vscode/terminal/index1.html)
- [8] [VS Codeのスニペット定義参考](https://qiita.com/rainbartown/items/d7718f12d71e688f3573#%E3%83%A6%E3%83%BC%E3%82%B6%E3%83%BC%E3%82%B9%E3%83%8B%E3%83%9A%E3%83%83%E3%83%88)