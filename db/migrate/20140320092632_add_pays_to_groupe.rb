class AddPaysToGroupe < ActiveRecord::Migration
  def change
    add_column :groupes, :pays, :string
  end
end
