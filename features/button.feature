# language: ja
フィーチャ: ボタンを作成、編集、削除したい

  背景:
    前提  ユーザ"akiinyo"で会員登録する
    かつ  "トップ"ページを表示している
    かつ  "マイページ"リンクをクリックする

  シナリオ: ボタンを作成する
    前提  "ボタン設置"リンクをクリックする
    もし   "button[kind]"に"いいね！"と入力する
    かつ   "登録する"ボタンをクリックする

    ならば "ボタン一覧"に、"いいね！"と表示されていること

  シナリオ: ボタンを編集する
    前提   "gray"ボタンが登録されている
    かつ   "ボタン設置"リンクをクリックする
    もし   "編集"リンクをクリックする
    かつ   "button[kind]"に"grey"と入力する
    かつ   "登録する"ボタンをクリックする

    ならば "ボタン一覧"に、"grey"と表示されていること
    かつ   "ボタン一覧"に、"gray"と表示されていないこと