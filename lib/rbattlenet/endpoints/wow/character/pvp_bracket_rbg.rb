module RBattlenet
  module Wow
    class Character::PvpBracketRbg < RBattlenet::Endpoints::Base
      def self.path(character)
        RBattlenet.uri("profile/wow/character/#{character[:realm]}/#{character[:name]}/pvp-bracket/rbg?namespace=profile-")
      end
    end
  end
end
