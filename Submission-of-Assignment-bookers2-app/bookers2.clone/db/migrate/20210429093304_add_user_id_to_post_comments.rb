class AddUserIdToPostComments < ActiveRecord::Migration[5.2]
  def change
    add_column :post_comments, :user_id, :integer
  end
end
