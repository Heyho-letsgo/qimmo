class DropUtilisateursTable < ActiveRecord::Migration
  def change
    drop_table :utilisateurs
  end
end
