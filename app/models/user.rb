class User < ActiveRecord::Base
  attr_accessible :username, :name, :password
  has_many :matches, :foreign_key => "asker_id",
      :class_name => "Match"
  has_many :answerers, :through => :matches
  has_many :questions
  has_many :answers
  has_many :votes
end