class AddDogIdToToysTable < ActiveRecord::Migration[6.1]
  def change
    add_column :toys, :dog_id, :integer, null: false
  end
end
