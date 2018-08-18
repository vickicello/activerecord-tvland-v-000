class AddColumnsToCharacters < ActiveRecord::Migration[5.1]

  def change
    add_column :characters do |t|
      t.belongs_to :actor, index: true
      t.belongs_to :show, index: true
      t.string :name
      t.integer :show_id
      t.integer :actor_id
    end
  end

end
