class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.integer :company_id
      t.text :description
      t.integer :cost
      t.string :currency
      t.string :cost_type
      t.integer :service_id

      t.timestamps null: false
    end
  end
end
