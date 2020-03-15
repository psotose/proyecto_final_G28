class ChangeCommentToTextInOpinions < ActiveRecord::Migration[5.2]
  def change
    change_column :opinions, :comment, :text
  end
end
