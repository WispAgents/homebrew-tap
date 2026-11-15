class Ingrain < Formula
  desc "Keep coding agents in line with your team's decisions and learned lint rules"
  homepage "https://github.com/WispAgents/ingrain"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.2.1/ingrain-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "4190451ccc433e19e295ca32fcb07a0d799cf22b75fe33348822ce2983b87b79"
    end
    on_intel do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.2.1/ingrain-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "a1ab3fa6bf7cdcaca9decf2d85c49a12ea0130f4faf9b33619143c822110b94f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.2.1/ingrain-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bdae7737bca8ff0a62151e101f66c36bfc11b180a1f2eb32dd6de528ebd21301"
    end
    on_intel do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.2.1/ingrain-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad545da8551523f0c09aa117a05d2c965964a3fa796e8d898e748c6b0e68e4dc"
    end
  end

  def install
    bin.install "ingrain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ingrain --version")
  end
end
