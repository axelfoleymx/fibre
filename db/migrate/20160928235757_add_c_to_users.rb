class AddCToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :enterprise, index: true, foreign_key: true
  end
end
