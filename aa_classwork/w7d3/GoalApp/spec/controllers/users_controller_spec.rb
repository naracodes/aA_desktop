require 'rails_helper'
require 'spec_helper'

RSpec.describe UsersController, type: :controller do
    # index, new, create, destroy
    describe "GET#new" do
        it "renders sign up form" do
            get :new
            expect(response).to render_template(:new)
        end
    end

    describe "POST#create" do
        let(:valid_params) { { 
            user: { 
                username: "Kookaburra", 
                password: "valid_password" }
            } 
        }

        let(:invalid_params) { {           
            user: {
                username: "Kookaburra", 
                password: "bleh" }
            }
        }

        before :each do
            create(:user)
        end

        context "with valid params" do
            it "redirects to user's index page" do
                post :create, params: valid_params
                expect(response).to redirect_to(user_goals_url(User.last))
            end
        end

        context "with invalid params" do
            it "renders user's sign up page" do
                post :create, params: invalid_params
                expect(response).to render_template(:new)
            end
            
            it "has errors" do
                post :create, params: invalid_params
                expect(flash[:errors]).to eq(["Password length can't be less than 6"])
            end
        end
    end
end
