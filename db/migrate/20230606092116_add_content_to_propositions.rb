class AddContentToPropositions < ActiveRecord::Migration[7.0]
  def change
    add_column :propositions, :content, :string
  end
end
