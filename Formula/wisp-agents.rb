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
  url "https://registry.npmjs.org/wisp-agents/-/wisp-agents-1.0.0-alpha.12.tgz"
  sha256 "3f4df8260ca2f538603ce0505a30c626d5bc62df583e0d25355785ab8b72563e"
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
