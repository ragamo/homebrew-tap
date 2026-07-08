class Kojira < Formula
  desc "A TUI wrapper for Jira — backlog, boards, and more"
  homepage "https://github.com/ragamo/kojira"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.7/kojira-aarch64-apple-darwin.tar.gz"
      sha256 "e4e04223012fc1568299607192ee86b49b28ad35dd3055b28def7dbd0fed0a3f"
    end
    on_intel do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.7/kojira-x86_64-apple-darwin.tar.gz"
      sha256 "78daac2f7e5206c96dd5fd249639bdd3d90f4fcf0bef364f4c83a1c20aad5d0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.7/kojira-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f9131d41a37576e36a328a99b379ae6e6b08d062b3df4b7d9f87fa73734530d"
    end
    on_intel do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.7/kojira-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0773bcb5e12f11059551b743f2c11501fec69ab5aa6cefa8341aa8e5758039a"
    end
  end

  def install
    bin.install "kojira"
  end

  test do
    assert_match "kojira #{version}", shell_output("#{bin}/kojira --version")
  end
end
