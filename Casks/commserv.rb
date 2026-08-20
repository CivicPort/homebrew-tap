cask "ember-messenger" do
  version "0.9.0"
  sha256 "2d0c2a6a3361a515f3a5ba0e62450b3868117d78bd64d6a65106b29aff249c48"

  url "https://github.com/CloudFlowAutomation/Ember/releases/download/v#{version}/CommSecure-darwin-universal-#{version}.zip"
  name "ember-messenger"
  desc "End-to-end encrypted group chat client with perfect forward secrecy"
  homepage "https://github.com/CloudFlowAutomation/Ember"

  livecheck do
    url :url
  end

  depends_on macos: :monterey

  app "Ember.app"

  zap trash: [
    "~/Library/Application Support/Ember",
    "~/Library/Caches/io.darkmatterit.ember",
    "~/Library/HTTPStorages/io.darkmatterit.ember",
    "~/Library/Preferences/io.darkmatterit.ember.plist",
    "~/Library/Saved Application State/io.darkmatterit.ember.savedState",
  ]
end
