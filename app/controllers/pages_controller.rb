class PagesController < ApplicationController
  def home
    @articles = Article.all.order(:date)
  end
end
