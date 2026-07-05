class Kojira < Formula
  desc "A TUI wrapper for Jira — backlog, boards, and more"
  homepage "https://github.com/ragamo/kojira"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.0/kojira-aarch64-apple-darwin.tar.gz"
      sha256 "f076335f8f22635cc6198e4648e6753191b3793ad60aa8cd6cb0ae092aec62f8"
    end
    on_intel do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.0/kojira-x86_64-apple-darwin.tar.gz"
      sha256 "12623594548761a522f4914ee045e9122bc9281e45a8b190c8dde6b45219ec14"
    end
  end

  def install
    bin.install "kojira"
  end

  test do
    assert_match "kojira #{version}", shell_output("#{bin}/kojira --version")
  end
end
