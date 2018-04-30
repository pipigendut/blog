# class ArticlesController < BaseController
# before_action :set_article, only: [:show, :edit, :update]
# before_action :authenticate_user!
#
#   def index
#   @user = current_user.email
#     if params[:tag]
#       @articles = Article.tagged_with(params[:tag])
#     else
#       @articles = Article.all
#       render component: 'Article', props: { article: @article }, tag: 'span', class: 'todo'
#     end
#   end
#
#   def new
#     @article = Article.new
#   end
#
#   def edit
#   end
#
#   def create
#   	@article = Article.new(article_params)
#     @article.posted_by_id = current_user.id
# 		if @article.save
#       redirect_to articles_path
#     else
#       render 'new'
#     end
#   end
#
#   def update
#   if @article.update(article_params)
#       redirect_to @article
#     else
#       render 'edit'
#     end
#   end
#
#   def destroy
#       @article = Article.find(params[:id])
#       @article.destroy
#       redirect_to articles_path
#   end
#
# private
#   def article_params
#     params.require(:article).permit(:title, :content, :posted_by_id, :permalink, :state, :all_tags)
#   end
#
#   def set_article
#     @article = Article.find(params[:id])
#   end
#
# end
