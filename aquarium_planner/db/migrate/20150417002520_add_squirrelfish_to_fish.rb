class AddSquirrelfishToFish < ActiveRecord::Migration
  def change
    add_column :fish, :sharks_rays, :string
    add_column :fish, :squirrelfish, :string
    add_column :fish, :tangs_surgeons, :string
    add_column :fish, :triggerfish, :string
    add_column :fish, :wrasse_reef_safe, :string
    add_column :fish, :wrasse_fish_only, :string
    add_column :fish, :live_corals, :string
    add_column :fish, :invertebrates, :string
    add_column :fish, :live_rock_sand, :string
  end
end
