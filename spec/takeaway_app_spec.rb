require 'takeaway_app'

describe TakeawayApp do
  it { is_expected.to respond_to(:basket) }
  let(:menu) { double(:menu, print: 'Menu List')}
  let(:app) { TakeawayApp.new(menu) }

  describe "#view_dishes" do

    it "is expected to show dishes on the menu" do #me
      expect(app.view_dishes).to eq "Menu List"
    end

  end

  describe "#add_dish" do
    
    it "should add number of dishes from menu to basket" do

      allow(menu).to receive(:release).with("Chilli", 5).and_return(["Chilli", "Chilli", "Chilli", "Chilli", "Chilli"])
      app.add_dish("Chilli", 5)
      expect(app.basket).to include("Chilli").at_least(5).times

    end

  end

  describe "#view_basket" do
    
  end

end