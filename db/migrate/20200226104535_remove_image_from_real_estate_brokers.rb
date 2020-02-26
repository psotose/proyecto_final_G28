class RemoveImageFromRealEstateBrokers < ActiveRecord::Migration[5.2]
  def change
    remove_column :real_estate_brokers, :image, :string
  end
end
