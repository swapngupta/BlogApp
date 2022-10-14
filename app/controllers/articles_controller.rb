class ArticlesController < ApplicationController
before_action :find_id, only: %i[show edit update destroy] 

  def index
    @articles = Article.all
    # render :index   

  end

  def show
  end

  def new   
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article.destroy
    redirect_to root_path, status: :see_other
  end

  private
    def find_id
      @article = Article.find(params[:id])
    end
    def article_params
      params.require(:article).permit(:title, :body, :phone)
    end
end
