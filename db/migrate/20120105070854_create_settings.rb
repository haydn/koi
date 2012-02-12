class CreateSettings < ActiveRecord::Migration
  def change
    create_table :koi_settings do |t|
      t.string   :url
      t.string   :meta_title
      t.text     :meta_description
      t.integer  :set_id
      t.string   :set_type

      t.timestamps
    end

    add_index :koi_settings, :url
    add_index :koi_settings, :set_id
    add_index :koi_settings, :set_type
  end
end
