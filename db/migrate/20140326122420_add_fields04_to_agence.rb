class AddFields04ToAgence < ActiveRecord::Migration
  def change
    add_column :agences, :num_voie, :string
    add_column :agences, :voie, :string
    add_column :agences, :ville, :string
    add_column :agences, :pays, :string
  end
end
