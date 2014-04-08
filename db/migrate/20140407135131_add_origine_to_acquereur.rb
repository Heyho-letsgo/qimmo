class AddOrigineToAcquereur < ActiveRecord::Migration
  def change
    add_column :acquereurs, :origine, :string
  end
end
