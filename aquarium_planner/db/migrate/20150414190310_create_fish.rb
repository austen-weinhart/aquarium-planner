class CreateFish < ActiveRecord::Migration
  def change
    create_table :fish do |t|
      t.references :aquarium, index: true, foreign_key: true
      t.string :name
      t.string :dwarf_angels
      t.string :large_angels
      t.string :anglers_frogs
      t.string :anthias
      t.string :basslets
      t.string :batfish
      t.string :blennies
      t.string :boxfish
      t.string :butterflies
      t.string :cardinals
      t.string :chromis
      t.string :clownfish
      t.string :damsels
      t.string :dartfish
      t.string :dragonets
      t.string :eels
      t.string :filefish
      t.string :foxface_rabbits
      t.string :gobies
      t.string :groupers
      t.string :grunts_sweetlips
      t.string :jawfish
      t.string :hawkfish
      t.string :hogfish
      t.string :lions_scorpions
      t.string :parrotfish
      t.string :pseudochromis
      t.string :puffers
      t.string :seahorse_pipefish

      t.timestamps null: false
    end
  end
end
