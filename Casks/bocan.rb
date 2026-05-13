cask "bocan" do
  version "0.12.0"
  sha256 "24a3b9f3f6a9b0a738a17c53d2493a68ef6aa18f38d33c7c3c37c77fe42901d0"

  url "https://github.com/bocan/bocan-music/releases/download/v#{version}/Bocan.dmg"
  name "Bòcan"
  desc "A thoughtful local music player for macOS"
  homepage "https://bocan.app"

  livecheck do
    url "https://bocan.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  depends_on macos: ">= :sequoia"

  app "Bocan.app"

  zap trash: [
    "~/Library/Application Support/Bocan",
    "~/Library/Caches/io.cloudcauldron.bocan",
    "~/Library/HTTPStorages/io.cloudcauldron.bocan",
    "~/Library/Logs/Bocan",
    "~/Library/Preferences/io.cloudcauldron.bocan.plist",
    "~/Library/Saved Application State/io.cloudcauldron.bocan.savedState",
  ]
end
