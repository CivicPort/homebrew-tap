cask "commserv" do
  version "0.7.0"
  sha256 "902b8c7bf5ccc0626121057e7e7ba4e8dd612f759b452b5f538489748089c3ef"

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
