cask "poirot" do
  version "26.07.2"
  sha256 "7b1bf2a925dd9e67c932c8e923419b682e6a664e85d452ab2cefd7fe23c748fb"

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
