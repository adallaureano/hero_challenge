require 'rails_helper'

RSpec.describe "Weapons", type: :request do

  describe "GET /weapons" do
    it "returns success status" do
      get weapons_path
      expect(response).to have_http_status(200)
    end
    it "the weapon current_power is present"
      #por implementar
    it "is not valid without weapon"
      #por implementar
      #weapon = Weapons.new(weapons_params)
      #expect(weapon).to_not be_valid
    it "the links is showing correctly"
      #por implementar 
  end

  describe "POST /weapons" do
    context "When it has valid parameters" do 
      it "creates weapon with correct attributes" do
        weapon_attributes = FactoryBot.attributes_for(:weapon)
        post weapons_path, params: {weapon: weapon_attributes}
        expect(Weapon.last).to have_attributes(weapon_attributes)
      end
    end
    context "When it has not valid parameters" do
      it "does not creates the weapon" do
        expect{
          post weapons_path, params: { weapon: { name: '', 
            description: '', power_base: '', power_step: '', level: ''}}
        }.to_not change(Weapon, :count)
      end
    end
  end
end


it 'should delete weapon' do
  expect { delete :destroy, params: {id: weapon.id } }.to Weapon, :count).by(-1)
  expect(flash[:notice]).to eq 'Weapon was successfully deleted.'
end
 