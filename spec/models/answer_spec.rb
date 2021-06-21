require 'rails_helper'

RSpec.describe Answer, type: :model do
  answer = Answer.new(content:"Resposta teste",formulary_id:1,question_id:1,visit_id:2)
  
  it "is valid with valid arguments " do
    expect(answer).to be_valid
  end
end
