class Message < ActiveRecord::Base

  validates :body, presence: true, length: {maximum: 2000}

end
