class ArticlesController < ApplicationController
  def index
    @symbols = [
      {id: 1, name: 'hoge'}
    ]
    @hash = [
      {'id' => 101, 'name' => 'fuga'}
    ]
  end

  def new
    # todo
  end

  def show
    @article = Article.where(id: params[:id]).first()
  end

  def post
    article = Article.new
    article.name = params[:name]
    article.save
  end
end
