class Articles < ActiveRecord::Migration[5.2]
 def up
   create_table :articles do |t|
     t.string :name, null: false, comment: 'name'
     t.timestamps
   end
 end

 def down
   drop_table :articles
 end
end
