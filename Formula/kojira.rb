class Kojira < Formula
  desc "A TUI wrapper for Jira — backlog, boards, and more"
  homepage "https://github.com/ragamo/kojira"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.4/kojira-aarch64-apple-darwin.tar.gz"
      sha256 "85e9122c582e86a3abab06fb2ba5248d6df3195ec7eb66f66fc77b280dc533e7"
    end
    on_intel do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.4/kojira-x86_64-apple-darwin.tar.gz"
      sha256 "59e271d2511878bfba5ad81f2b0902afc8cb77e7ae82c33aec7058f45af0e654"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.4/kojira-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5716eda758180fd2ce60d1e8d748d18f56731d509279f87be8b28a9fe8433479"
    end
    on_intel do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.4/kojira-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9283f1f8091970300822d9259fb5b180d7cb5e75d7d93a57d2f0c393b72f344e"
    end
  end

  def install
    bin.install "kojira"
  end

  test do
    assert_match "kojira #{version}", shell_output("#{bin}/kojira --version")
  end
end
