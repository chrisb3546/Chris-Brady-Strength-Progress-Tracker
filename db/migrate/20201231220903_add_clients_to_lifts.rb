class AddClientsToLifts < ActiveRecord::Migration[6.0]
  def change
    add_reference :lifts, :client
  end
end
