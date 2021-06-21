require 'rails_helper'

RSpec.describe Question, type: :model do
  
  question = Question.new(name:"Questão 1",formulary_id:1)
  
  it "it not valid with name already taken" do
    expect(question).to_not be_valid
  end

  it "is valid with valid arguments" do
    question.name = "RSpec Question"
    expect(question).to be_valid
  end

end
