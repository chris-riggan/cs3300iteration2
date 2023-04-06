require "application_system_test_case"

class MtgCardsTest < ApplicationSystemTestCase
  setup do
    @mtg_card = mtg_cards(:one)
  end

  test "visiting the index" do
    visit mtg_cards_url
    assert_selector "h1", text: "Mtg Cards"
  end

  test "creating a Mtg card" do
    visit mtg_cards_url
    click_on "New Mtg Card"

    fill_in "Name", with: @mtg_card.Name
    fill_in "Quantity", with: @mtg_card.Quantity
    fill_in "Set", with: @mtg_card.Set
    fill_in "Set number", with: @mtg_card.Set_Number
    click_on "Create Mtg card"

    assert_text "Mtg card was successfully created"
    click_on "Back"
  end

  test "updating a Mtg card" do
    visit mtg_cards_url
    click_on "Edit", match: :first

    fill_in "Name", with: @mtg_card.Name
    fill_in "Quantity", with: @mtg_card.Quantity
    fill_in "Set", with: @mtg_card.Set
    fill_in "Set number", with: @mtg_card.Set_Number
    click_on "Update Mtg card"

    assert_text "Mtg card was successfully updated"
    click_on "Back"
  end

  test "destroying a Mtg card" do
    visit mtg_cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mtg card was successfully destroyed"
  end
end
