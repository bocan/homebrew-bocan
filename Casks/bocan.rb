cask "bocan" do
  version "2.22.0"
  sha256 "83932e8135c0bdb05064e3c390efb9fd017aa91a4d2859e80be455dfeca30928"

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
