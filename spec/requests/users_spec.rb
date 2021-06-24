require 'rails_helper'

RSpec.describe "Users", type: :request do
    let(:valid_attributes) {
        {"name" => "Valid Name","password" => "Validpass123","email"=>"valid@mail.com","cpf"=>"72016974044"}
      }

    let(:valid_headers) {
       { "auth_token"=> "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2MjQ2MjQ3MjB9.P-D036DmllGKAbj4seihdHwD9gbKes9G-j8mBdIAF8Y" }
    }

    describe "GET /index" do
        it "is valid with valid arguments" do
            User.create! valid_attributes
            get users_url, headers: valid_headers, as: :json
            expect(response).to be_successful
        end
    end
end
