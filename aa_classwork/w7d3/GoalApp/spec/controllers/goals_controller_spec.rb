require 'rails_helper'

RSpec.describe GoalsController, type: :controller do

    describe "GET#new" do
        it "renders form to make new goal" do
            allow(subject).to receive(:logged_in?).and_return(true)
            get :new
            expect(response).to render_template(:new)
        end
    end

    describe "POST#create" do
        before :each do
            create :user
            # is current_user.logged_in?
            allow(subject).to receive(:logged_in?).and_return(true)
        end

        let(:valid_params) {{ 
            goal: {
                name: "Sleep 8 hours",
                description: "sleep...",
                user_id: User.last.id
        }}}

        let(:invalid_status_params) {{ 
            goal: {
                name: "Eat 3 meals a day",
                description: "eat...",
                user_id: User.last.id,
                status: "INVALID STATUS"
        }}}

        let(:invalid_user_id_params) {{ 
            goal: {
                name: "Eat 3 meals a day * 2",
                description: "eat...* 2",
                user_id: -1,
                status: "INCOMPLETE"
        }}}
        
        context "with valid params" do
            before :each do
                post :create, params: valid_params
            end

            it "creates the goal" do
                expect(Goal.exists?(Goal.last.id)).to be(true)
            end

            it "redirects to goal_url" do
                expect(response).to redirect_to(goal_url(Goal.last.id))
            end

        end

        context "with invalid params" do
            before :each do
                post :create, params: valid_params
            end

        end
    
    end



    describe "GET#show" do

    end

    describe "DELETE#destroy" do
    
    end
end
