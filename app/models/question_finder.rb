class QuestionFinder
  def self.find
    Question.first(:order => "RANDOM()")
  end
end