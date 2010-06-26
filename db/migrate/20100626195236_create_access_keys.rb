class CreateAccessKeys < ActiveRecord::Migration
  def self.up
    create_table :access_keys do |t|
      t.string   "token_a", "token_b", :limit => 999
      t.string   "service", "type", :null => false
      t.string   "owner_type"
      t.integer  "owner_id"
      t.datetime "created_at", "updated_at", :null => false
    end
  end

  def self.down
    drop_table :access_keys
  end
end
