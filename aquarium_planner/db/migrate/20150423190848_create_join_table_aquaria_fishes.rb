class CreateJoinTableAquariaFishes < ActiveRecord::Migration

    def change
        create_table :aquaria_fishes do |t|
          t.integer :aquarium_id
          t.integer :fish_id
        end
     
        add_index :aquaria_fishes, :aquarium_id
        add_index :aquaria_fishes, :fish_id
      end

end
