require "get_news/version"
require "nokogiri"
require "open-uri"

module GetNews
  class Main
    def get_news(search_word, news_count) 
      url = 'http://news.google.com/news/?ie=UTF8&output=atom&hl=ja&num=' + news_count + '&q=' + search_word

      charset = nil
      xml = open(url) do |f|
        charset = f.charset
        f.read
      end

      doc = Nokogiri::XML.parse(xml, nil, charset)

      doc.title
    end
  end
end
