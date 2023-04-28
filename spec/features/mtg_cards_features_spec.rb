require "rails_helper"
RSpec.feature "MtgCards", type: :feature do
    context "Update MtgCard" do
        let(:mtg_card) { MtgCard.create(Name: "card name", Set: "some set", Set_Number: 1) }
        before(:each) do
          visit edit_mtg_card_path(mtg_card)
        end
   
   
        scenario "should be successful" do
          within("form") do
            fill_in "Name", with: "new name"
          end
          click_button "Update Mtg card"
          expect(page).to have_content("Mtg card was successfully updated.")
        end
   
   
        scenario "should fail" do
          within("form") do
            fill_in "Name", with: ""
          end
          click_button "Update Mtg card"
          expect(page).to have_content("Name can't be blank")
        end
      end
  end
   
  