class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_article, only: [:show, :edit, :destroy]
  before_action :get_article_params, only: [:create, :update]

  def new
  end

  def create
    @article = Article.new(@article_params)
    @article.user = current_user
    @article.thumbnail = "" unless @article.thumbnail

    if @article.save
      redirect_to article_path(@article)
    else
      redirect_to new_article_path(@article)
    end
  end

  def show
  end

  def edit
    render 'articles/new'
  end

  def update
    @article = Article.find(params[:id])
    @article_params[:thumbnail] = "" unless @article_params[:thumbnail]

    if @article.update(@article_params)
      redirect_to article_path(@article)
    else
      redirect_to edit_article_path(@article)
    end
  end

  def destroy
    @article.destroy
    redirect_to root_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def get_article_params
    @article_params = params[:article].permit(:title, :thumbnail, :content, :date)
  end
end
