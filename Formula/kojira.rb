class Kojira < Formula
  desc "A TUI wrapper for Jira — backlog, boards, and more"
  homepage "https://github.com/ragamo/kojira"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.8/kojira-aarch64-apple-darwin.tar.gz"
      sha256 "7f842a10a7e3700be8c928e7ce2524809e46196b5527142921bc17b87bd39292"
    end
    on_intel do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.8/kojira-x86_64-apple-darwin.tar.gz"
      sha256 "1040e870790a5b05d53a5eddd25ba2eb43ef8d007b0a62af88122ee353a9dd17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.8/kojira-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6fc63b9b4bac9ec6f1649e3bbfa9e7deed3699824f9611b7ec988a5a1e71a28f"
    end
    on_intel do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.8/kojira-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a39e2ab1bd667de6186a14d38812cfb4f0a0a00d6f900241f5ef633167f4acc3"
    end
  end

  def install
    bin.install "kojira"
  end

  test do
    assert_match "kojira #{version}", shell_output("#{bin}/kojira --version")
  end
end
