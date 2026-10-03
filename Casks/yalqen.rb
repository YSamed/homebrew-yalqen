cask "yalqen" do
  arch arm: "arm64"

  version "0.3.2"
  sha256 "5ceba611b3387c12e24a864dff97181652a86489b7af2d31a32444338c91d8f8"

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
