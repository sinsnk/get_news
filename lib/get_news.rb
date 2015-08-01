require "get_news/version"
require "nokogiri"
require "open-uri"

module GetNews
  class Main
    def get_news(search_word, news_count) 
      url = 'http://news.google.com/news/?hl=ja&num=' + news_count + '&q=' + search_word

      charset = nil
      html = open(url) do |f|
        charset = f.charset
        f.read
      end

      doc = Nokogiri::HTML.parse(html, nil, charset)

      p doc.title
    end
  end
end
