class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create!(comment_params)
    redirect_to @article, :notice=>"Comment created!"
  end


private

  def article_params
    params.require(:article).permit(:name, :content, :published_on)
  end

  def comment_params
    params.require(:comment).permit(:name, :content )
  end

end
