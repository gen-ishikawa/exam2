class PlacecommentsController < ApplicationController
  # コメントを保存、投稿するためのアクションです。
  def create
    @comment = current_user.placecomments.build(comment_params)
    @place = @comment.place
    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @comment.save
        format.html { redirect_to place_path(@place), notice: 'コメントを投稿しました。' }
        # JS形式でレスポンスを返します。
        format.js { render :index }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    set_comment
    #@comment = Placecomment.find(params[:id])
    @place = @comment.place
    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @comment.destroy
        format.html { redirect_to place_path(@place), notice: 'コメントを削除しました。' }
        # JS形式でレスポンスを返します。
        format.js { render :index }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    #binding.pry
    set_comment
    #@comment = Placecomment.find(params[:id])
    @place = @comment.place
  end
  
  def update
    #binding.pry
    set_comment
    @comment.update(comment_params)
    redirect_to place_path(@comment.place), notice: "コメントを更新しました"
  end

  private
    # ストロングパラメーター
    def comment_params
      params.require(:placecomment).permit(:place_id, :content)
    end
    
    def set_comment
      @comment=Placecomment.find(params[:id])
    end
end
