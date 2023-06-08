class CreateStatus < ActiveRecord::Migration[7.0]
  def change
     add_column :events, :status, :boolean, default: true
  end
end
