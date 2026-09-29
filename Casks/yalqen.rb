cask "yalqen" do
  arch arm: "arm64"

  version "0.1.0"
  sha256 "d2f461922388b09987e34f431ae8e1494b28e879a59813d47978a62d89552e79"

  url "https://github.com/YSamed/yalqen/releases/download/v#{version}/Yalqen-#{version}-#{arch}.dmg"
  name "Yalqen"
  desc "Open-source, Chromium-based browser for developers"
  homepage "https://yalqen.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Yalqen.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Yalqen.app"]
  end

  zap trash: [
    "~/Library/Application Support/Yalqen",
    "~/Library/Preferences/com.yalqen.browser.plist",
    "~/Library/Saved Application State/com.yalqen.browser.savedState",
  ]
end
