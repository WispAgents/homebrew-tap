class Ingrain < Formula
  desc "Keep coding agents in line with your team's decisions and learned lint rules"
  homepage "https://github.com/WispAgents/ingrain"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.2.3/ingrain-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "27933bf63009784249158a039de72881a1a7fa78576148562759ab99fe8c2ba5"
    end
    on_intel do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.2.3/ingrain-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "1d4ef908a3d54c193d1e2bfe3b5197547e2aaed57cc8b280b818f738d5228c8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.2.3/ingrain-v0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "23eab268968f3db34330b4315595c320d9891e404750a432349e6bf40774c7e1"
    end
    on_intel do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.2.3/ingrain-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "32df2879416a9f5723019799561e5cfaa62d980a5655effb8bb0e981be24f621"
    end
  end

  def install
    bin.install "ingrain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ingrain --version")
  end
end
