
fontSel <- function(){
  
  #Rで日本語使えるようにするフォント指定。
  #OS名を認識して、mac/winでそれそれフォントを指定する
  #使えるフォントはnames(quartzFonts())で確認(macのみ)。フォントはPC依存。
  
  if(grepl("macOS", sessionInfo()$running) == TRUE){
    #Macの場合
    #fontregisterer関数がインストール済みか確認
    exist <- "fontregisterer" %in% rownames(installed.packages())
    
    if(exist == TRUE){
      #インストール済みの場合
      require(fontregisterer)
      fontA <<- "YuMincho" #ここでは遊明朝
      cat("インストール済み、Mac最高～ \n")
    }else{
      #なかったらインストールして読み込み
      install.packages("remotes")
      install.packages("systemfonts")
      remotes::install_github("Gedevan-Aleksizde/fontregisterer", repos = NULL, type = "source")
      #https://ill-identified.hatenablog.com/entry/2020/10/03/200618
      require(fontregisterer)
      fontA <<- "YuMincho" #ここでは遊明朝
      cat("インストール完了、Mac最高～ \n")
    }
    
  }else{
    #Windowsだった場合
    windowsFonts(MEI = windowsFont("Meiryo")) #とりまメイリオ
    fontA <<- "MEI" 
    cat("windows11のGUIは8以来のマジギレ案件。Windowsユーザーは強く生きて。\n")
  }
  
}#おわりんこ
#puch 20220324_15:44

#webブラウザからのテスト
#っていうか、macのRstudioって日本語入力の頭がおかしいよね...
#このサイトで対症療法が載っている。
#https://walkintheforest.net/rstudio-editor-japanese/
#なんか更新されないなあ


#source("http://cse.fra.affrc.go.jp/shirakawa/R/fontSel_ver1.R", encoding="UTF-8")
source("https://raw.githubusercontent.com/dipperGit/fontSel/br1_fontSel/fontSel.R", encoding="UTF-8")
