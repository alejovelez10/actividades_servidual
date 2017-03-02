class CreateActividadesUsuarios < ActiveRecord::Migration[5.0]
  def up
    

     create_table :actvidads_users, id: false do |t|
      t.belongs_to :actvidad, index: true
      t.belongs_to :user, index: true
    end
  end

  def down
    
    :actvidads_users
  end
end


