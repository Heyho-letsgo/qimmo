class CreateCodepostals < ActiveRecord::Migration
  def change
    create_table :codepostals do |t|
      t.string :code

      t.timestamps
    end
  end
end
