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
    articles = @main.get_news("Git", 3)
    assert_true articles.length <= 3
  end

  def test_get_news_check_first_line
    articles = @main.get_news("おもてなし", 5)
    assert_true articles[0].length > 0 
  end
end
