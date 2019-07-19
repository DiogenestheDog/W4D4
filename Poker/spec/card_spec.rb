require "card"

describe "Card" do
  subject(:card) { Card.new(:diamonds, 12) }
  describe "#value" do
    it "returns the correct value" do
      expect(card.value).to eq(12)
    end
  end
  describe "#suit" do
    it "returns the correct suit" do
      expect(card.suit).to eq(:diamonds)
    end
  end
end