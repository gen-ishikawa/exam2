class CommentsController < ApplicationController
  # コメントを保存、投稿するためのアクションです。
  def create
    @comment = current_user.comments.build(comment_params)
    @tweet = @comment.tweet
    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @comment.save
        format.html { redirect_to tweet_path(@tweet), notice: 'コメントを投稿しました。' }
        # JS形式でレスポンスを返します。
        format.js { render :index }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @tweet = @comment.tweet
    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @comment.destroy
        format.html { redirect_to tweet_path(@blog), notice: 'コメントを削除しました。' }
        # JS形式でレスポンスを返します。
        format.js { render :index }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    #binding.pry
    @comment = Comment.find(params[:id])
    @tweet = @comment.tweet
  end
  
  def update
    #binding.pry
    set_comment
    @comment.update(comment_params)
    redirect_to tweet_path(@comment.tweet), notice: "コメントを更新しました"
  end

  private
    # ストロングパラメーター
    def comment_params
      params.require(:comment).permit(:tweet_id, :content)
    end
    
    def set_comment
      @comment=Comment.find(params[:id])
    end
end