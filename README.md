# pokemon_app

pokemon_app アプリのリポジトリです。

## Getting Started

### このドキュメントの想定読者

- 新しくプロジェクトに参加する Flutter アプリ開発者
- Flutter アプリをローカルで実行したいバックエンド開発者

### 環境構築その前に

アプリの開発環境は各自の PC の状態に影響される部分が多く、正確な構築手順や動作保証を整備するのが難しい問題があります。
そのため何か問題があった際は個別に Kim Yupyong(yupyong.kim@gmail.com)へご連絡ください。

### fvm のインストール

Flutter SDK のバージョン管理は [fvm](https://fvm.app/) を想定しています。
公式サイトに従ってインストールをしてください。

https://fvm.app/docs/getting_started/installation

### 開発環境

Flutter の開発用の IDE は Visual Studio Code（以下 VS Code）と Android Studio の選択肢がありますが、このプロジェクトでは VS Code を利用してください

### fvm による Flutter のバージョン指定

現状では `3.13.9` を指定しています。VS Code でこのプロジェクトを開き、ウィンドウ右下のターミナルから以下のコマンドで Flutter SDK のバージョンを `3.13.9` に設定してください。

```
$ fvm install 3.13.9
$ fvm use 3.13.9
$ fvm flutter pub get
```

上記のコマンドを実行したら、一度 VS Code を再起動してください。（バージョン変更が読み込まれない場合があるため）

### Git Flow

main ブランチを master として、main から feature を切るようにして進めてください
