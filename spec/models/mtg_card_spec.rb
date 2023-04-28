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
describe "Project Attribute Requirements on Edit", :type => :model do
    
  end
  