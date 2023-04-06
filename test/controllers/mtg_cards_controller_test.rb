require "test_helper"

class MtgCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mtg_card = mtg_cards(:one)
  end

  test "should get index" do
    get mtg_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_mtg_card_url
    assert_response :success
  end

  test "should create mtg_card" do
    assert_difference('MtgCard.count') do
      post mtg_cards_url, params: { mtg_card: { Name: @mtg_card.Name, Quantity: @mtg_card.Quantity, Set: @mtg_card.Set, Set_Number: @mtg_card.Set_Number } }
    end

    assert_redirected_to mtg_card_url(MtgCard.last)
  end

  test "should show mtg_card" do
    get mtg_card_url(@mtg_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_mtg_card_url(@mtg_card)
    assert_response :success
  end

  test "should update mtg_card" do
    patch mtg_card_url(@mtg_card), params: { mtg_card: { Name: @mtg_card.Name, Quantity: @mtg_card.Quantity, Set: @mtg_card.Set, Set_Number: @mtg_card.Set_Number } }
    assert_redirected_to mtg_card_url(@mtg_card)
  end

  test "should destroy mtg_card" do
    assert_difference('MtgCard.count', -1) do
      delete mtg_card_url(@mtg_card)
    end

    assert_redirected_to mtg_cards_url
  end
end
