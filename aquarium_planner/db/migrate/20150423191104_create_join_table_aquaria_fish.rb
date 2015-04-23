class CreateJoinTableAquariaFish < ActiveRecord::Migration

    def change
        create_table :aquaria_fish do |t|
          t.integer :aquarium_id
          t.integer :fish_id
        end
     
        add_index :aquaria_fish, :aquarium_id
        add_index :aquaria_fish, :fish_id
      end

end
