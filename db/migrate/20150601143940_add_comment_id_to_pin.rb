class AddCommentIdToPin < ActiveRecord::Migration
  def change
    add_column :pins, :comment_id, :integer
    add_index :pins, :comment_id
  end
end
