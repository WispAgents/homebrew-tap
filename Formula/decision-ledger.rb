class DecisionLedger < Formula
  desc "Reviewed ledger of project decisions, enforced on coding agents at edit time"
  homepage "https://github.com/WispAgents/decision-ledger"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WispAgents/decision-ledger/releases/download/v0.1.0/decisions-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "793df1d50d5e0035f4289b4903a71538c82dbbccdd0fafc704d1f222e64a4359"
    end
    on_intel do
      url "https://github.com/WispAgents/decision-ledger/releases/download/v0.1.0/decisions-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "89d49af27cf4dc1bc974dca2da2753c8b25519ad361a274fd4cede9ce6ae9edf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WispAgents/decision-ledger/releases/download/v0.1.0/decisions-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb5a6061cc45c97802493391587f1dd5cd57d68c0c3d23de6a33b8b8cf3b5ff5"
    end
    on_intel do
      url "https://github.com/WispAgents/decision-ledger/releases/download/v0.1.0/decisions-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b87166ff2291cca08db38c419889e64b896574afe52d9b481692381d7d8363c4"
    end
  end

  def install
    bin.install "decisions"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decisions --version")
  end
end
