class Kojira < Formula
  desc "A TUI wrapper for Jira — backlog, boards, and more"
  homepage "https://github.com/ragamo/kojira"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.5/kojira-aarch64-apple-darwin.tar.gz"
      sha256 "2fb6ed46af722ed1c293fe7a905c8ff627426239058e51fed45a207c3a6bb8cd"
    end
    on_intel do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.5/kojira-x86_64-apple-darwin.tar.gz"
      sha256 "87f22f1ac1246b817a063b4d5e5b4b953128ee55f70a15fa3e6b14cf45d91e4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.5/kojira-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cdcd6a39759de397d94725d7db184cbbd67cebab77f2dc02ed3a77814d5689e7"
    end
    on_intel do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.5/kojira-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a858889a1c74127ab933555964647e4d7ec3ec3d2d0439d602816220d8a25477"
    end
  end

  def install
    bin.install "kojira"
  end

  test do
    assert_match "kojira #{version}", shell_output("#{bin}/kojira --version")
  end
end
