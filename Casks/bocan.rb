cask "bocan" do
  version "1.1.0"
  sha256 "f30a99d1f85fc79c626ceba851dda66e6f0c2f4c3647783c2d719be566798cf4"

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
