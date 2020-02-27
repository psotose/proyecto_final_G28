class AddColumnToRealEstateBrokers < ActiveRecord::Migration[5.2]
  def change
    add_reference :real_estate_brokers, :user, foreign_key: true
  end
end
