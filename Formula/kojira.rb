class Kojira < Formula
  desc "A TUI wrapper for Jira — backlog, boards, and more"
  homepage "https://github.com/ragamo/kojira"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.1/kojira-aarch64-apple-darwin.tar.gz"
      sha256 "66202318b2901ea09c5f829bdd7a491e0f2670320d896318629878cc08c295bc"
    end
    on_intel do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.1/kojira-x86_64-apple-darwin.tar.gz"
      sha256 "c398feabddbf55351e95b03b01fd092bb577dd7a6c17b86f6f480e1d0a43a852"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.1/kojira-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "547331ff4c9752425af3cd8de91cc4758ab434f315d4e8f98af3b22be71ac9f8"
    end
    on_intel do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.1/kojira-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc9def38898a971ef00a8374739b62c07356fa8b4816764063a2b30e1c8198c1"
    end
  end

  def install
    bin.install "kojira"
  end

  test do
    assert_match "kojira #{version}", shell_output("#{bin}/kojira --version")
  end
end
