class RepliesController < ApplicationController
  def index
  end
  def new
  	article = Article.find(params[:article_id])
  	comment = Comment.find(params[:comment_id])
    @reply = comment.replies.build

    respond_to do |format|
      format.html 
    end
  end
  def create
  	article = Article.find(params[:article_id])
  	comment = Comment.find(params[:comment_id])
    @reply = comment.replies.create(params_reply)

    respond_to do |format|
      if @reply.save
         format.html {redirect_to article_path(article)}
      else
          format.html { render :action => "new" }
      end
    end
  end
  private
  def params_reply
  	params.require(:reply).permit(:body)
  end
end
