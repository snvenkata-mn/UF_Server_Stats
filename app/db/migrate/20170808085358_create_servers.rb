class CreateServers < ActiveRecord::Migration[5.1]
  def change
    create_table :servers, force: true do |t|
      t.string "url"
      t.boolean "status"
      t.string "version"
      add_index :servers, :project_id
    end
  end
end
