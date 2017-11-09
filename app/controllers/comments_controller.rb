class CommentsController < ApplicationController
  # コメントを保存、投稿するためのアクションです。
  def create
    @comment = current_user.comments.build(comment_params)
    @tweet = @comment.tweet
    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @comment.save
        format.html { redirect_to tweet_path(@tweet), notice: 'コメントを投稿しました。' }
      else
        format.html { render :new }
      end
    end
  end

  private
    # ストロングパラメーター
    def comment_params
      params.require(:comment).permit(:tweet_id, :content)
    end
end