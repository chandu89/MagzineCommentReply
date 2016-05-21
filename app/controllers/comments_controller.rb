class CommentsController < ApplicationController
  def index
  end
  def new
    article = Article.find(params[:article_id])
    @comment = article.comments.build

    respond_to do |format|
      format.html 
    end
  end
  def create
    article = Article.find(params[:article_id])
    @comment = article.comments.create(param_comment)

    respond_to do |format|
      if @comment.save
         format.html {redirect_to article_path(article)}
      else
          format.html { render :action => "new" }
      end
    end
  end
  def show
  	
  end
  def destroy
  	
  end
  private
  def param_comment
    params.require(:comment).permit(:email, :name, :comment)
  end
end
