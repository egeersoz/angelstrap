class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :dba
      t.string :location
      t.string :website
      t.integer :founder_id
      t.text :description

      t.timestamps null: false
    end
  end
end
