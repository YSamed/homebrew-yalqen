cask "yalqen" do
  arch arm: "arm64"

  version "0.4.20"
  sha256 "90aa0ef3c0cc52224c7f45b1344d5046407c83912485cb11a83b73076ece4ff5"

  url "https://github.com/YSamed/yalqen/releases/download/v#{version}/Yalqen-#{version}-#{arch}.dmg"
  name "Yalqen"
  desc "Open-source, Chromium-based browser for developers"
  homepage "https://yalqen.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Yalqen.app"

  zap trash: [
    "~/Library/Application Support/yalqen-electron-prototype",
    "~/Library/Caches/com.yalqen.browser",
    "~/Library/Caches/com.yalqen.browser.ShipIt",
    "~/Library/Caches/yalqen-updater",
    "~/Library/HTTPStorages/com.yalqen.browser",
    "~/Library/Preferences/com.yalqen.browser.plist",
    "~/Library/Saved Application State/com.yalqen.browser.savedState",
  ]
end
