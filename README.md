[![Build Status](https://travis-ci.org/sinsnk/get_news.svg?branch=master)](https://travis-ci.org/sinsnk/get_news)
# GetNews の概要

get_news とは Google ニュースをキーワードで検索し、ヒットしたニュースのタイトルを配列形式で取得するためのライブラリです。


## インストール

アプリケーションの Gemfile に以下の行を記述します。


```ruby
gem 'get_news'
```

その後以下のコマンドを実行します。

    $ bundle

もしくは以下のコマンドを実行します。

    $ gem install get_news

アンインストールする場合は以下のコマンドを実行します。

    $ gem uninstall gemname


## 機能
* Google ニュースをキーワード検索

## メソッド一覧

getNews(keyword)

keyword : String (検索キーワード)


## 使用方法

```ruby
require 'get_news'

#Google ニュースをキーワードで検索
result = getNews.getNews('keyword')

#結果表示
pp result
```

## 開発／テスト

この Gem には MiniTest による単体テスト用コードが用意されています。
また Travis CI と連携し、テストの自動化を行っています。

https://travis-ci.org/sinsnk/get_news


##対応予定機能

* 件数指定
* 複数キーワードによる AND / OR 検索
* 日付、ニュースカテゴリ情報の追加


## ライセンス

このソースコードのライセンスは [MIT License](http://opensource.org/licenses/MIT) です。

Copyright (c) 2015 AIIT Framework Development Team D

