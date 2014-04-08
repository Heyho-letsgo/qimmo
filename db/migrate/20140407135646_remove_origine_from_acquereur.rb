class RemoveOrigineFromAcquereur < ActiveRecord::Migration
  def change
    remove_column :acquereurs, :origine, :string
  end
end
