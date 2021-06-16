require 'rails_helper'

RSpec.describe Formulary, type: :model do
  
  formulary = Formulary.new(name:"Novo formulario")
  
  it "is valid with valide attributes" do
    expect(formulary).to be_valid
  end
  
  it "is not valid with name already taken" do
    formulary.name = "Formulario de exemplo"
    expect(formulary).to_not be_valid
  end
end
