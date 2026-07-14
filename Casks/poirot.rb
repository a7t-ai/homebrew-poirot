cask "poirot" do
  version "26.07.5"
  sha256 "a59ba23ca8a8ac7162736c034465459c350942601517f9401cf17729c8745d83"

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
