class Kojira < Formula
  desc "A TUI wrapper for Jira — backlog, boards, and more"
  homepage "https://github.com/ragamo/kojira"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.9/kojira-aarch64-apple-darwin.tar.gz"
      sha256 "0486b1e789474af10416c8ce11f6ab85e812776eda17445b38913b9095c92ff9"
    end
    on_intel do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.9/kojira-x86_64-apple-darwin.tar.gz"
      sha256 "06129acc4fb9919861b9db1a8dab514abe850738bedfe8a0e47163c8de88b18b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.9/kojira-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9953359c7e8a01b060f1974cfd36d919519731d60521f1eb3d66f2c1492b8f2f"
    end
    on_intel do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.9/kojira-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ebcd03247182f4bec3a06d03942a3827ca21f97bc6411f325bd97b884fe9382"
    end
  end

  def install
    bin.install "kojira"
  end

  test do
    assert_match "kojira #{version}", shell_output("#{bin}/kojira --version")
  end
end
