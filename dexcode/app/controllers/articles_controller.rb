class ArticlesController < BaseController
before_action :set_article, only: [:show, :update, :edit]
before_action :authenticate_user!

  def index
  @user = current_user.email
    if params[:tag]
      respond_with Article.tagged_with(params[:tag])
    else
      respond_to do |format|
        @article = Article.order(created_at: :desc)
        format.html
        format.json { render json: @article }
      end
    end
  end

  def new
    @user = current_user
    respond_to do |format|
      @article = Article.all
      format.html
      format.json { render json: @article }
    end
  end


  def edit
      @article = Article.find(params[:id])
      @alltags = ArticleTag.joins(:article).joins(:tag).select("tags.name").rewhere('articles.id': @article)
  end

  def create
    @user = current_user
		if respond_with Article.create(article_params)
    else
      render 'new'
    end
  end
  #   def create
  #   	@article = Article.new(article_params)
  #     @article.posted_by_id = current_user.id
  # 		if @article.save
  #       redirect_to articles_path
  #     else
  #       render 'new'
  #     end
  #   end
  def update
    article = Article.find(params["id"])
    if article.update_attributes(article_params)
      respond_with article, json: article
    else
      render 'edit'
    end
  end

  def destroy
    respond_with Article.destroy(params[:id])
  end

private
  def article_params
    params.require(:article).permit(:title, :content, :posted_by_id, :permalink, :state, :all_tags)
  end

  def set_article
    article = Article.find(params[:id])
  end

end
