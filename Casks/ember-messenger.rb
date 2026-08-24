
cask "ember-messenger" do
  version "0.10.0"
  sha256 "4244986debe4bd0e606dca04bd9be0a4ce9d152d50612dd8175348e501b8d858"
 
  url "https://github.com/CivicPort/Ember/releases/download/v#{version}/CommSecure-darwin-universal-#{version}.zip"
  name "ember-messenger"
  desc "End-to-end encrypted group chat client with perfect forward secrecy"
  homepage "https://github.com/CivicPort/Ember"
 
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
