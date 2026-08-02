cask "commserv" do
  version "0.6.0"
  sha256 "fa38b87aa45c941cb9cc35e91976bfeb21e6d3ebab923fdcbacd30874a46d76c"

  url "https://github.com/CloudFlowAutomation/CommSecure/releases/download/v#{version}/CommSecure-darwin-universal-#{version}.zip"
  name "CommSecure"
  desc "End-to-end encrypted group chat client with perfect forward secrecy"
  homepage "https://github.com/CloudFlowAutomation/CommSecure"

  livecheck do
    url :url
  end

  depends_on macos: :monterey

  app "CommSecure.app"

  zap trash: [
    "~/Library/Application Support/CommSecure",
    "~/Library/Caches/io.darkmatterit.commsecure",
    "~/Library/HTTPStorages/io.darkmatterit.commsecure",
    "~/Library/Preferences/io.darkmatterit.commsecure.plist",
    "~/Library/Saved Application State/io.darkmatterit.commsecure.savedState",
  ]
end
