class CommentsController < ApplicationController

    before_action :find_comment, only: [:show, :edit, :update, :destroy]

    def index 
        @comments = Comment.all 
    end 

    def show 
    end 

    def new 
        # byebug
        @comment = Comment.new(article_id: params[:article_id].to_i, description: "enter your comment")
    end 

    def create 
        # byebug
        @comment = Comment.create(
            article_id: params[:comment][:article_id].to_i, 
            description: params[:comment][:description]
        )

        if @comment.valid? 
            redirect_to articles_path
        else
            flash[:errors] = @comment.errors.full_messages 
            redirect_to articles_path() 
        end  
    end 
    def edit  

    end 
    def update
        if @comment.update(comment_params)
            redirect_to comment_path(@comment)   
        else
            flash[:errors] = @comment.errors.full_messages 
            redirect_to edit_comment_path(@comment) 
        end  
    end
    def destroy 
        @comment.destroy 
        redirect_to articles_path()
    end 

    private 
    def comment_params 
        params.require(:comment).permit(:description)
      end 
    
      def find_comment
        @comment = Comment.find(params[:id])
      end


end
