class ArticlesController < ApplicationController

    before_action :get_article, only:[:show, :edit, :update, :destroy]

    def index
      @articles = Article.all  
    end

    def new
      @article = Article.new  
    end

    def create
      @article = Article.new set_params
      if @article.save
        redirect_to articles_path
      else
        render 'new'
      end
    end

  

    def show
    end

    def edit
    end

    def update
      if @article.update set_params
        redirect_to article_path(@article)
      else
        render 'edit'
      end 
    end

    def destroy
      @article.destroy
      redirect_to articles_path
    end    

    private
    
    def get_article
      @article = Article.find(params[:id])
    end    

    def set_params
      params.require(:article).permit(:title, :description)
    end

end
