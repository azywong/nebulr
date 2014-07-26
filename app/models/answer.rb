class Answer < ActiveRecord::Base
  attr_accessible :text
  has_many :votes
end