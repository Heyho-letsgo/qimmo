class CreateUtilisateurs < ActiveRecord::Migration
  def change
    create_table :utilisateurs do |t|

      t.string :login
      t.string :mdp

      t.string :civilite
      t.string :prenom
      t.string :nom
      t.string :email
      t.string :tel_port
      t.timestamps

    end
  end
end
