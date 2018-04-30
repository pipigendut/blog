class BlogsController < ApplicationController

  def index
    if params[:tag]
      @articles = Article.joins(:posted_by).select("articles.*, users.email as user").order(created_at: :desc).rewhere(state: "Published")
    else
      @articles = Article.joins(:posted_by).select("articles.*, users.email as user").order(created_at: :desc).rewhere(state: "Published")
      @alltags = ArticleTag.joins(:article).joins(:tag).select("tags.name")
      # @articles = Article.joins(:posted_by).all
    end
  end

  def showkonten

  end

  def show
    @article = Article.friendly.find(params[:id])
    @alltags = ArticleTag.joins(:article).joins(:tag).select("tags.name").rewhere('articles.id': @article)
    @user = current_user.email
    @articlelimit = Article.order(created_at: :desc).limit(2)
  end

private
  def article_params
    params.require(:article).permit(:title, :content, :posted_by_id, :permalink, :state, :all_tags)
  end

end
