require 'spec_helper'

describe RBattlenet::Wow::Character::Pets do
  before do
    RBattlenet.authenticate(client_id: ENV["CLIENT_ID"], client_secret: ENV["CLIENT_SECRET"])
  end

  describe "#find_character_professions" do
    it "fetches character data" do
      with_connection("wow_character_professions") do
        result = RBattlenet::Wow::Character::Professions.find(realm: "stormrage", name: "sheday")
        expect(result.primaries.class).to eq Array
      end
    end
  end
end
