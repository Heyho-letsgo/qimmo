class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :civilite
      t.string :nom
      t.string :prenom
      t.string :telephone
      t.string :email
      t.timestamps

      t.timestamps
    end
  end
end
