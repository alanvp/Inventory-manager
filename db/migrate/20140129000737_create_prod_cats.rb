class CreateProdCats < ActiveRecord::Migration
  def change
    create_table :prod_cats do |t|
      t.belongs_to :product, index: true
      t.belongs_to :category, index: true

      t.timestamps
    end
  end
end
