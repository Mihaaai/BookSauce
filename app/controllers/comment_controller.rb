class CommentController < ApplicationController
  
  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
