cask "poirot" do
  version "25.06.1"
  sha256 "598e12491907b3be93e7b2c1b77eb451161f76bc2c42b356a149ad61d5ada673"

  url "https://github.com/a7t-ai/poirot/releases/download/v#{version}/Poirot-v#{version}.dmg"
  name "Poirot"
  desc "Native macOS companion for Claude Code"
  homepage "https://github.com/a7t-ai/poirot"

  depends_on macos: ">= :sequoia"

  app "Poirot.app"

  zap trash: [
    "~/Library/Preferences/com.leonardocardoso.Poirot.plist",
    "~/Library/Caches/com.leonardocardoso.Poirot",
  ]
end
