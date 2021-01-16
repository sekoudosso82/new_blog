class ArticlesController < ApplicationController
    before_action :find_article, only: [:show, :edit, :update, :destroy]

    def index 
        @articles = Article.all 
        # if Comment.all.length > 0
        #     @acomments = Comment.all.select { |com| com.article_id === params[:id]}
        # else
        #     @acomments =[] 
        # end
    end 

    def show 
    end 

    def new 
        @article = Article.new 
        # redirect_to new_article_path()
    end 

    def create 
        @article = Article.create(article_params)

        if @article.valid? 
            redirect_to article_path(@article) 
        else
            flash[:errors] = @article.errors.full_messages 
            redirect_to new_article_path() 
        end  
    end 
    def edit  

    end 
    def update
        if @article.update(article_params)
            redirect_to article_path(@article.id) 
        else
            flash[:errors] = @article.errors.full_messages 
            redirect_to edit_article_path(@article) 
        end  
    end
    def destroy 
        @article.destroy 
        redirect_to articles_path()
    end 

    private 
    def article_params 
        params.require(:article).permit(:title, :body, :image)
      end 
    
      def find_article
        @article = Article.find(params[:id])
      end
end
