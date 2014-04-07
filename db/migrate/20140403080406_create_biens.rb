class CreateBiens < ActiveRecord::Migration
  def change
    create_table :biens do |t|

      t.string :mandat_type

      t.timestamps
    end
  end
end
