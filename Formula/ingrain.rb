class Ingrain < Formula
  desc "Keep coding agents in line with your team's decisions and learned lint rules"
  homepage "https://github.com/WispAgents/ingrain"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.2.4/ingrain-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "1a33142d4521230adfb44a37eca8457867d3b3e6787a30184cb2b763adcfb009"
    end
    on_intel do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.2.4/ingrain-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "5f5923d38dca19c1014300ce84f3b50082f90ce3b37938c730817f57b497f1a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.2.4/ingrain-v0.2.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2fd9891aaa8bd2e626a311220890ba15100327f1d38efdb5ba6705adb5d1e22a"
    end
    on_intel do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.2.4/ingrain-v0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e8ea7e4247d215eda98890b80d59cab7896f5e1e95f614898c5fdaafe99f098"
    end
  end

  def install
    bin.install "ingrain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ingrain --version")
  end
end
