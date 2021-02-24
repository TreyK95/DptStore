class CreateDptStores < ActiveRecord::Migration[6.1]
  def change
    create_table :dpt_stores do |t|
      t.string :name

      t.timestamps
    end
  end
end
