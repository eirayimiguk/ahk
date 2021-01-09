# CHANGELOG

## IME.ahk

履歴

### 2008.07.11
    v1.0.47以降の 関数ライブラリスクリプト対応用にファイル名を変更
### 2008.12.10
    コメント修正
### 2009.07.03
    IME_GetConverting() 追加 
    Last Found Windowが有効にならない問題修正、他。
### 2009.12.03
    IME 状態チェック GUIThreadInfo 利用版 入れ込み
    （IEや秀丸8βでもIME状態が取れるように）
    http://blechmusik.xrea.jp/resources/keyboard_layout/DvorakJ/inc/IME.ahk
    ・Google日本語入力β 向け調整
    入力モード 及び 変換モードは取れないっぽい
    IME_GET/SET() と IME_GetConverting()は有効
### 2012.11.10
    x64 & Unicode対応
    実行環境を AHK_L U64に (本家およびA32,U32版との互換性は維持したつもり)
    ・LongPtr対策：ポインタサイズをA_PtrSizeで見るようにした

            ;==================================
            ;  GUIThreadInfo 
            ;=================================
            ; 構造体 GUITreadInfo
            ;typedef struct tagGUITHREADINFO {(x86) (x64)
            ;	DWORD   cbSize;                 0    0
            ;	DWORD   flags;                  4    4   ※
            ;	HWND	hwndActive;             8    8
            ;	HWND	hwndFocus;             12    16  ※
            ;	HWND	hwndCapture;           16    24
            ;	HWND	hwndMenuOwner;         20    32
            ;	HWND	hwndMoveSize;          24    40
            ;	HWND	hwndCaret;             28    48
            ;	RECT	rcCaret;               32    56
            ;} GUITHREADINFO, *PGUITHREADINFO;

    ・WinTitleパラメータが実質無意味化していたのを修正
    対象がアクティブウィンドウの時のみ GetGUIThreadInfoを使い
    そうでないときはControlハンドルを使用
    一応バックグラウンドのIME情報も取れるように戻した
    (取得ハンドルをWindowからControlに変えたことでブラウザ以外の大半の
    アプリではバックグラウンドでも正しく値が取れるようになった。
    ※ブラウザ系でもアクティブ窓のみでの使用なら問題ないと思う、たぶん)