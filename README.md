テキトーなフォントを、win/mac自動認識して設定してくれる関数。

・使い方 R起動中に、 
source("https://raw.githubusercontent.com/dipperGit/fontSel/br1_fontSel/fontSel.R", encoding="UTF-8")
を実行したのち、 
fontSel()
を実行すると、OSに合わせてフォントを「fontA」に格納してくれる。
現在はmacだと遊明朝、winだとメイリオになる。変えたい場合は適当に新しい関数を作ってください。

・余談 ベースは有志が作った関数「fontregisterer関数」がコア。というかmacはこれがないと日本語が豆腐になるんですよね...。 
#https://ill-identified.hatenablog.com/entry/2020/10/03/200618
このページが超面白い。日本語入力に苦悩するすべてのRユーザーに。
