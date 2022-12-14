class ArticleController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.save
    redirect_to article_path(@article)
  end

  def show
    # @article = Article.find(params[:id])
  end

  def edit
    # @article = Article.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end
end
