class Kojira < Formula
  desc "A TUI wrapper for Jira — backlog, boards, and more"
  homepage "https://github.com/ragamo/kojira"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.6/kojira-aarch64-apple-darwin.tar.gz"
      sha256 "824a849131d2e17317e3566e9a8867e44dadde2c6dcb071b8bb6506491ca0c9e"
    end
    on_intel do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.6/kojira-x86_64-apple-darwin.tar.gz"
      sha256 "84163297ffce27ccb7640b28f9aa7fe32918bece2f82b3277dc346026399e87b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.6/kojira-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c8233653dbed7cb4fe00bf93b880ccf81b0b93dffedece5649b3a35f383b3a44"
    end
    on_intel do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.6/kojira-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee3b7ca53b0ba17baf81b9ad50df42bbaec066b7f05567a87850dbce70efb15e"
    end
  end

  def install
    bin.install "kojira"
  end

  test do
    assert_match "kojira #{version}", shell_output("#{bin}/kojira --version")
  end
end
