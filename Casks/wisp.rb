# The wisp desktop app (wisp.app), from the GitHub release's .zip: the same build the app updates itself from.
#   brew install --cask wispagents/tap/wisp
# The formula (wisp-agents) is the CLI + browser mode; this cask is the app. The release workflow, or a hand bump
# from SHA256SUMS.txt, sets version and the two sha256 values.
cask "wisp" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0-alpha.18"
  sha256 arm:   "6698b8692f064e29b745b28ca9ced12bce82d673797cff8504a15d247c57d810",
         intel: "8b4f7868b772493c491b2e982d5048094838eed228856697278f000ae06ac377"

  url "https://github.com/WispAgents/wisp/releases/download/v#{version}/wisp-mac-#{arch}.zip",
      verified: "github.com/WispAgents/wisp/"
  name "wisp"
  desc "Run coding agents on your machines, from anywhere"
  homepage "https://trywisp.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # wisp updates itself (Update now), from the same release
  auto_updates true
  # the app's page needs Safari 16.4 (LSMinimumSystemVersion 13.3)
  depends_on macos: :ventura

  app "wisp.app"

  # The app isn't notarized yet. A download made by brew is quarantined, so macOS would refuse to open it ("can't
  # verify"). The unpacked app loses the flag before it moves to Applications, as install.sh --app's curl download
  # never gets it.
  preflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "wisp.app"], chdir: ".", writable_paths: ["wisp.app"]
  end

  # ~/.wisp (tasks, settings) is shared with the CLI and stays
  zap trash: [
    "~/Library/Application Support/dev.wisp.app",
    "~/Library/Caches/dev.wisp.app",
    "~/Library/Preferences/dev.wisp.app.plist",
    "~/Library/Saved Application State/dev.wisp.app.savedState",
    "~/Library/WebKit/dev.wisp.app",
  ]
end
