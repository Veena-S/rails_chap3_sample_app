class AddIndexToUsersEmail < ActiveRecord::Migration[6.1]
  #  Adding database index for the column email to spped up the
  # the search providing an email address
  def change
    add_index :users, :email, unique: true
  end
end
