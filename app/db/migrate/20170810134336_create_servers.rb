class CreateServers < ActiveRecord::Migration[5.1]
  def change
    create_table :servers do |t|
      t.string "url"
      t.boolean "status"
      t.string "version"
      t.integer :project_id
    end
  end
end
