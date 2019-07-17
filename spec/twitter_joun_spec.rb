require_relative '../lib/twitter_journ'


RSpec.describe Bot do
  journalists = ["@a", "@b", "@c", "@d", "@e", "@f", "@g", "@h"]
  bot = Bot.new(journalists)
  describe "the login_twitter method" do
    it "should return client, and client is not nil" do
      expect(bot.login_twitter).not_to be_nil
    end
  end

  describe "the choose_alea_jour method" do
    it "should return an array of five journalists random" do
      expect(bot.choose_alea_jour.length).to eq(5)
      expect(bot.choose_alea_jour).not_to eq(bot.choose_alea_jour)
    end
  end

  describe "the login_streaming method" do
    it "should return client_stream, and not nil" do
      expect(bot.login_streaming).not_to be_nil
    end
  end
end
