require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "should not save without title" do
     article = Article.new
     article.content = ""
     assert_not article.save
  end

  test "should not save without content" do
    article = Article.new
    article.title = "foobar"
    # attempt to save, assert a failure occured
    assert_not article.save
  end

  test "should save with title and content" do 
    article = Article.new
    article.title = "foo"
    article.content = "bar"
    assert article.save
  end
end
