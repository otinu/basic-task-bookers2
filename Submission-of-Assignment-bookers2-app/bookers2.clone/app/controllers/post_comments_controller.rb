class PostCommentsController < ApplicationController

  def create
       book = Book.find(params[:book_id])
    comment = book.post_comments.new(post_comment_params)
    comment.book_id = book.id
    comment.save
    redirect_to book_path(book)
  end

  def destroy
  end


  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end


end
