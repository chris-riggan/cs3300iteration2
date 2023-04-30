require "rails_helper"

RSpec.feature "MtgCards", type: :feature do
  
  context "Login" do
    scenario "should sign up" do
      visit root_path
      click_link 'Sign up'
      within("form") do
        fill_in "Email", with: "testing@test.com"
        fill_in "Password", with: "123456"
        fill_in "Password confirmation", with: "123456"
        click_button "Sign up"
      end
      expect(page).to have_content("Welcome! You have signed up successfully.")
    end

    scenario "should log in" do
      user = FactoryBot.create(:user)
      login_as(user)
      visit root_path
      expect(page).to have_content("Logged in")
    end
  end

  context "Update MtgCard" do
    let(:mtg_card) { MtgCard.create(Name: "card name", Set: "some set", Set_Number: 1) }

      before(:each) do
        user = FactoryBot.create(:user)
        login_as(user)
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
   
  