# Homebrew formula for wisp-agents. Lives in the WispAgents/homebrew-tap repo as Formula/wisp-agents.rb:
#
#   brew tap wispagents/tap
#   brew install wisp-agents
#
# The release workflow (.github/workflows/release.yml) copies this file to the tap with `url` and
# `sha256` set to the new npm tarball, so edit it here, not in the tap.
class WispAgents < Formula
  desc "Launch coding agents, skip the transcript, read the presentation"
  homepage "https://trywisp.dev/"
  url "https://registry.npmjs.org/wisp-agents/-/wisp-agents-1.0.0-alpha.11.tgz"
  sha256 "fecc7753a1f98ba37d24a63bdd65e7e06f1cf236d1cb0f12059f398f62de797b"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    <<~EOS
      The desktop app is not included with the Homebrew install; `wisp` opens in your
      browser at http://localhost:4477.
      For the desktop app, download it from https://trywisp.dev/#download
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wisp --version")
  end
end
