class ArticlesController < ApplicationController
  def index
    @symbols = [
      {id: 1, name: 'hoge'}
    ]
    @hash = [
      {'id' => 101, 'name' => 'fuga'}
    ]
  end
end
