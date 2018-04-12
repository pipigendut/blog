class ArticlesController < ApplicationController

before_action :set_article, only: [:show, :edit, :update]

http_basic_authenticate_with name: "admin", password: "admin", except: [:index, :show]
# before any blog action happens, it will authenticate the user
before_action :authenticate_user!
#Other Restful methods show, new, edit, create, update, destroy

def home

end
def index
  @articles = Article.all.paginate(page: params[:page], per_page: 2)
  @article = Article.new
  @user = current_user.email
  if User.find_by(email: 'akbar@gmail.com')
     render :text => "hello world!"
  else User.find_by(email: 'coba@gmail.com')
     @setadmin = "anda bukan admin"
  end
end

def thumbnail
  @article = Article.all
  @user = current_user.email
end

def show
  @article = Article.find(params[:id])
  @articles = Article.select("id, title, text")
  @user = current_user.email
end

def new
  @article = Article.new
  @user = current_user.email
end

def edit
  @article = Article.find(params[:id])
    @user = current_user.email
end

def create
  @article = Article.new(article_params)
if @article.save
    flash[:notice] = "Article berhasil ditambah"
    redirect_to articles_path
  else
    render 'new'
  end
end

def update
  @article = Article.find(params[:id])
if @article.update(article_params)
  if :remove_image == true
  @article.remove_image!
end
    redirect_to @article
  else
    render 'edit'
  end
end

def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
end

private
  def article_params
    params.require(:article).permit(:title, :text, :image, :remove_image, :image_cache)
  end

  def set_article
  @article = Article.find(params[:id])
  end

end
