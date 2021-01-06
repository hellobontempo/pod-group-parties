class AddCategoryIdToParty < ActiveRecord::Migration[6.1]
  def change
    add_reference :parties, :category, null: false, foreign_key: true
  end
end
