cask "yalqen" do
  arch arm: "arm64"

  version "0.3.37"
  sha256 "8b40529b4cd5614a784d2f3c277258211f1ce3cfb99dc13b5f0be586899d2b84"

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
