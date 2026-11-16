class Ingrain < Formula
  desc "Keep coding agents in line with your team's decisions and learned lint rules"
  homepage "https://github.com/WispAgents/ingrain"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.2.2/ingrain-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "cec30394ea7df38a2dfee5b80bf9a3ac54617f245f40b0c68df4bcff7a8946f9"
    end
    on_intel do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.2.2/ingrain-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "75a61ebb4bffd7922a7fc83192fe7d3a5ac4fa9cffa4e576028e5a37085a4d88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.2.2/ingrain-v0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a56cb01d5f7ce40c4ad56872f8487623caf200e15b040fb5c2c937eff4844491"
    end
    on_intel do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.2.2/ingrain-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "729b44a58fabcc7cfeb841ec73205d582ae43758bb382abf385e713f872d193f"
    end
  end

  def install
    bin.install "ingrain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ingrain --version")
  end
end
