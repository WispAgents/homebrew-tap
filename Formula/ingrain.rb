class Ingrain < Formula
  desc "Keep coding agents in line with your team's decisions and learned lint rules"
  homepage "https://github.com/WispAgents/ingrain"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.3.0/ingrain-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "6c08835ad9b88641683dd1201b5b0878242fdf0facecd5aea3c04b22b479bbde"
    end
    on_intel do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.3.0/ingrain-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "9312bb8f5c70afd5218318d8d587bcd023837e8dbcb30d707651d0795fa5c2fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.3.0/ingrain-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "af4fafdc1b3c98d4a7a8e47d6898a473fcea086b68531abfded61a5dd7a207b0"
    end
    on_intel do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.3.0/ingrain-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f5030fcb38a015aa428d17f0e8f8603d62fd98396acf4069ff5580336151f8b9"
    end
  end

  def install
    bin.install "ingrain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ingrain --version")
  end
end
