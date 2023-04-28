require "rails_helper"
RSpec.describe MtgCardsController, :type => :controller do

    login_user

    describe "test web requests" do
        context "GET #index" do
            it "returns a success response" do
            get :index
            expect(response).to have_http_status(:ok)
            end
        end
        context "GET #show" do
            let!(:mtg_card) { MtgCard.create(Name: "card name", Set: "some set", Set_Number: 1) }
            it "returns a success response" do
                expect(response).to have_http_status(:ok)
            end
        end
    end
end
