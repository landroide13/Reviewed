class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create set_comment
    redirect_to articles_path
  end

  private

  def set_comment 
    params.require(:comment).permit(:commenter, :body)
  end

end
