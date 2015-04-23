class CreateJointFishesAquariaTable < ActiveRecord::Migration
  def change

    create_join_table :fishes, :aquaria do |t|
    t.index :fish_id
    t.index :aquarium_id
    end
  end
end
