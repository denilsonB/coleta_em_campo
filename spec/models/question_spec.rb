require 'rails_helper'

RSpec.describe Question, type: :model do
  
  question = Question.new(name:"Question Valid",formulary_id:19)
  
  it "is valid with valid arguments" do
    question.name = "RSpec Question"
    expect(question).to be_valid
  end
  
  it "it not valid with name already taken" do
    question.name = "Question 1"
    expect(question).to_not be_valid
  end

end
