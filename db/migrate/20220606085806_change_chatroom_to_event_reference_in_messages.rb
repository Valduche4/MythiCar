class ChangeChatroomToEventReferenceInMessages < ActiveRecord::Migration[6.1]
  def change
    remove_reference :messages, :chatroom, foreign_key: true
    add_reference :messages, :event, foreign_key: true
  end
end
