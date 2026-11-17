class Ingrain < Formula
  desc "Keep coding agents in line with your team's decisions and learned lint rules"
  homepage "https://github.com/WispAgents/ingrain"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.4.0/ingrain-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "bcebf8b1195c01993476ac95f17f6c7f5fdf45cbcf7fb2c2c2a4f03047fdeeb6"
    end
    on_intel do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.4.0/ingrain-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "78692ef2f0d3f1b484841470a04abb3729376ad51b2d5bc5b2a7934b4bdbafff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.4.0/ingrain-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f4bfa80ad6d74ec9ad16d04d5c0a617944178a274bec781a82e8deee785ee72b"
    end
    on_intel do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.4.0/ingrain-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf64de84944084f7f9515d3f7438c099678fb06142f18a57b72463d01e2dfeb5"
    end
  end

  def install
    bin.install "ingrain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ingrain --version")
  end
end
