class Ingrain < Formula
  desc "Learn lint rules from the corrections humans make to coding-agent output"
  homepage "https://github.com/WispAgents/ingrain"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.1.0/ingrain-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "643fd0c9ae58187c97e898407dcbd20f72407758a190de792728694cd211d965"
    end
    on_intel do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.1.0/ingrain-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "e921e0ce8a402032548b7187295d64ec6ae66746867bcca95ce6cf60342da2d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.1.0/ingrain-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "90e99e19942f417d12e118b07170c86cc5e3c36709d2471387b7edc93cccea46"
    end
    on_intel do
      url "https://github.com/WispAgents/ingrain/releases/download/v0.1.0/ingrain-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d99ae61d6677f1d55a2cc9da36248349675dd85af9a8f35831860003336d9ef9"
    end
  end

  def install
    bin.install "ingrain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ingrain --version")
  end
end
