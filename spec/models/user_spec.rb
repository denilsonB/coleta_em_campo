require 'rails_helper' 

RSpec.describe User, :type => :model do
    
    user = User.new(name:"Test",email:"test@mail.com",password:"Test123456",cpf:"79288904026")    

    it "is valid with valid attributes" do
        expect(user).to be_valid
    end

    it "is not valid password with less than 7 digits" do
        user.password = "Test1"
        expect(user).to_not be_valid
    end

    it "is not valid password with no letters" do
        user.password = "1234567"
        expect(user).to_not be_valid
    end

    it "is not valid password with no numbers" do
        user.password = "testtest"
        expect(user).to_not be_valid
    end

    it "is not valid password with no uppercase letter" do
        user.password = "test123"
        expect(user).to_not be_valid
    end

    it "is not valid password with no lowercase letter" do
        user.password = "TEST123"
        expect(user).to_not be_valid
    end

    it "is not valid with email already taken" do
        user.email = "testuser@mail.com"
        expect(user).to_not be_valid
    end

    it "is not valid with cpf already taken" do
        user.cpf = "46956296071"
        expect(user).to_not be_valid
    end

    it "is not valid cpf with less than 11 digits" do
        user.cpf = "0899327745"
        expect(user).to_not be_valid
    end    

    it "is not valid cpf with first verifying digit invalid" do
        user.cpf = "08993277461"
        expect(user).to_not be_valid
    end  
    
    it "is not valid cpf with second verifying digit invalid" do
        user.cpf = "08993277452"
        expect(user).to_not be_valid
    end      

end