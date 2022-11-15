class Message < ApplicationRecord
  belongs_to :user
  validates :body, presence:true
  #Scope permit us to filter by only recovering the last 20 messages in the example. 
  scope :custom_display, -> { order(:created_at).last(20) }

end
