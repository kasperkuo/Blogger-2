class ArticlesController < ApplicationController
  include ArticlesHelper

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
    @comment.article_id = @article_id
  end

  def new
    @article = Article.new

  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article)
    flash.notice = "Article has been created! :D"
  end

  def destroy
    Article.find(params[:id]).destroy
    redirect_to article_path
    flash.notice = "Article has been deleted :("
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    flash.notice = "Article '#{@article.title}' Updated!"

    redirect_to article_path(@article)
  end
end
