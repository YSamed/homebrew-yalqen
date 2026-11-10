cask "yalqen" do
  arch arm: "arm64"

  version "0.3.95"
  sha256 "3d5eb884708cfbfa099526e9513eb24a8029e1f11055c4f6ca1b29a3773aac0b"

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
