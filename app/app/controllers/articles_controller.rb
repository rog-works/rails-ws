class ArticlesController < ApplicationController
  def index
    @articles = [
      {id: 1, name: 'hoge'}
    ]
  end
end
