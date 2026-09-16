cask "bocan" do
  version "2.16.0"
  sha256 "63d6b9cf70ce6b4a21c97c350d4912d519df56d73c468ed441c58ba88dbdc905"

  url "https://github.com/bocan/bocan-music/releases/download/v#{version}/Bocan.dmg"
  name "Bòcan Music"
  desc "Music and podcast player for local libraries"
  homepage "https://bocan.app/"

  livecheck do
    url "https://bocan.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

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
