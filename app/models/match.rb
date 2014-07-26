class Match < ActiveRecord::Base
  belongs_to :asker, :foreign_key => "asker_id", :class_name => "User"
  belongs_to :answerer, :foreign_key => "answerer_id", :class_name => "User"
end