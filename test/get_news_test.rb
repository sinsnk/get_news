# -*- coding: utf-8 -*-
require 'test_helper'
require 'get_news'

class GetNewsTest < Minitest::Test

  def setup
    @main = GetNews::Main.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::GetNews::VERSION
  end

  def test_get_news_check_news_count
    articles = @main.getNews("Git", 3)
    assert_equal 3, articles.length
  end

  def test_get_news_check_first_line
    articles = @main.getNews("おもてなし", 5)
    assert_equal true,  articles[0].length > 0 
  end
end
