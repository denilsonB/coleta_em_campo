require 'rails_helper' 

RSpec.describe Visit, :type => :model do
    
    visit = Visit.new(date:Date.new(2021,06,17),created_at:Date.today,checkin_at:DateTime.new(2021,06,14,14,0,0),checkout_at:DateTime.new(2021,06,14,16,0,0),user_id:6)

    it "is not valid date when is in the past" do
        visit.date = Date.today - 1
        expect(visit).to_not be_valid
    end

    it "is not valid checkin when is greater than or equal to today" do
        visit.checkin_at = Date.today 
        expect(visit).to_not be_valid
    end
    it "is not valid checkin when is less than checkout" do
        visit.checkin_at = DateTime.now - 1
        visit.checkout_at = DateTime.now 
        expect(visit).to_not be_valid
    end
    it "is not valid visit when user is invalid" do
        visit.user_id = nil
        expect(visit).to_not be_valid
    end
end