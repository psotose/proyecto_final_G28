class CreateOpinions < ActiveRecord::Migration[5.2]
  def change
    create_table :opinions do |t|
      t.integer :rating
      t.string :comment
      t.references :user, foreign_key: true
      t.references :real_estate_broker, foreign_key: true

      t.timestamps
    end
  end
end
