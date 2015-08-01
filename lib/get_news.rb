#require "get_news/version"
require "nokogiri"
require "open-uri"
require "uri"

module GetNews
  class Main
    def get_news(search_word, news_count)
      if news_count < 1
        return
      end
      
      url = URI.escape('https://news.google.com/news?ned=us&ie=UTF-8&oe=UTF-8&q=' + search_word + '&output=atom&num=' + news_count.to_s + '&hl=ja')

      charset = nil
      xml = open(url) do |f|
        charset = f.charset
        f.read
      end

      doc = Nokogiri::XML(xml) do |config|
        config.strict.nonet
      end

      title_array = []
      doc.xpath('//xmlns:title').each_with_index do |val, index|
        if index != 0
          title_array.push(val.text)
        end
      end

      title_array
    end
  end
end
