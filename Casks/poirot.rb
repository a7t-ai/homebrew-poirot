cask "poirot" do
  version "26.08.5"
  sha256 "5c4d7e72beba10d804139072db658a65ced15e9c55a5b1714cd7473805b8e6d1"

  url "https://github.com/a7t-ai/poirot/releases/download/v#{version}/Poirot-v#{version}.dmg"
  name "Poirot"
  desc "Native macOS companion for Claude Code"
  homepage "https://github.com/a7t-ai/poirot"

  depends_on macos: :sequoia

  app "Poirot.app"

  zap trash: [
    "~/Library/Preferences/com.leonardocardoso.Poirot.plist",
    "~/Library/Caches/com.leonardocardoso.Poirot",
  ]
end
