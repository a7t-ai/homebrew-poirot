cask "poirot" do
  version "26.07.1"
  sha256 "45079b159d13726a682f61472342762e3cb297006b7912a985bc3668230debe7"

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
