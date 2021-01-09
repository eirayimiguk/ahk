# ahk

AutoHotKeyのスクリプトを管理するためのリポジトリです。

## 動作確認済みバージョン

AutoHotKey 1.1.33.02

## 利用方法

1. AutoHotKeyをインストール
1. リポジトリをクローン
1. main.ahkを実行

## 設定の追加方法

`config/`ディレクトリ以下にahkスクリプトを配置し、`main.ahk`に#Include文を追加する。

## ディレクトリ構造

```
ahk/
　├ libs/
  │  └ IME.ahk
　├ config/
  │  ├ general.ahk
  │  ├ ${CATEGORY-1}/
  │  └ ${CATEGORY-2}/
  │     ├ ${APP-1}.ahk
  │     └ ${APP-2}.ahk
　└ main.ahk
```



## Libraries

- IME.ahk
[説明書](https://w.atwiki.jp/eamat/pages/20.html)
[配布先](http://www6.atwiki.jp/eamat/)

## Thanks

- eamat. http://www6.atwiki.jp/eamat/
IME制御のために`IME.ahk`を一部改変しリポジトリに組み込ませていただきました。

## License

This script is licensed under the [MIT](LICENSE) license.