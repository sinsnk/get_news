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


## 用意されているメソッド

getNews

第一引数 : 検索キーワード


## 使用方法

```ruby
require 'get_news'

#Google ニュースをキーワードで検索
result = getNews.getNews('keyword')

#結果表示
pp result
```

## 開発／テスト

この Gem は Travis CI と連携しています。

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/get_news. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## ライセンス

このソースコードのライセンスは [MIT License](http://opensource.org/licenses/MIT) です。

Copyright (c) 2015 AIIT Framework Development Team D

