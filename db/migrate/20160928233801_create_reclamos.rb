class CreateReclamos < ActiveRecord::Migration
  def change
    create_table :reclamos do |t|
      t.references :enterprise, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
