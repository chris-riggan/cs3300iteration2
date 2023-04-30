require "rails_helper"
describe "Card Attribute Requirements on Create", :type => :model do

  context "validation tests" do

    it "ensures the Name is present when creating card" do
      mtg_card = MtgCard.new(Set:"some set")
      expect(mtg_card.valid?).to eq(false)
    end

    it "should not be able to save card when Name is missing" do
      mtg_card = MtgCard.new(Set: "some set")
      expect(mtg_card.save).to eq(false)
    end

    it "ensures the Set is present when creating card" do
        mtg_card = MtgCard.new(Name: "card name")
        expect(mtg_card.valid?).to eq(false)
    end
  
      it "should not be able to save card when Set is missing" do
        mtg_card = MtgCard.new(Name: "card name")
        expect(mtg_card.save).to eq(false)
    end

    it "should be able to save project when have Name, set, and set number" do
        mtg_card = MtgCard.new(Name: "card name", Set: "some set", Set_Number: 1)
        expect(mtg_card.save).to eq(true)
    end
  end
end

describe "card Attribute Requirements on Edit", :type => :model do
  context "validation tests" do

    before (:each) do
      @mtg_card = MtgCard.new(Name: "card name", Set: "some set", Set_Number: 1, Quantity: 1)
    end

    it "ensures the Name is present when editting card" do
      @mtg_card.update(:Name => "")
      expect(@mtg_card.valid?).to eq(false)
    end

    it "ensures the Name is changed when editting card" do
      @mtg_card.update(:Name => "new name")
      expect(@mtg_card.Name == "new name")
    end

    it "ensures the Set is present when editting card" do
      @mtg_card.update(:Set => "")
      expect(@mtg_card.valid?).to eq(false)
    end

    it "ensures the Set is changed when editting card" do
      @mtg_card.update(:Set => "new set")
      expect(@mtg_card.Set == "new set")
    end
    
    it "ensures the Set number is present when editting card" do
      @mtg_card.update(:Set_Number => "")
      expect(@mtg_card.valid?).to eq(false)
    end

    it "ensures the set number is changed when editting card" do
      @mtg_card.update(:Set_Number => 2)
      expect(@mtg_card.Set_Number == 2)
    end

    it "ensures the Quantity is changed when editting a card" do
      @mtg_card.update(:Quantity => 2)
      expect(@mtg_card.Quantity == 2)
    end
    
  end
end
  