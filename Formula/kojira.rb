class Kojira < Formula
  desc "A TUI wrapper for Jira — backlog, boards, and more"
  homepage "https://github.com/ragamo/kojira"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.3/kojira-aarch64-apple-darwin.tar.gz"
      sha256 "480f0081cf0fd05547deeffd917e002b21908b5a323ee42bfe201dc1eaf57539"
    end
    on_intel do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.3/kojira-x86_64-apple-darwin.tar.gz"
      sha256 "bf0b9738e610c620934ab36568362c6e6c4846b09d92de7621d084eab370d62a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.3/kojira-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "46d2fb3c59a27bdc2a1e037cd460ecf9536a644808b54af367e9146d7497ba12"
    end
    on_intel do
      url "https://github.com/ragamo/kojira/releases/download/v0.1.3/kojira-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ff8ef03f2764c59236b9878137bde35483a7c98bf6e30ea1e79fb532ac82624"
    end
  end

  def install
    bin.install "kojira"
  end

  test do
    assert_match "kojira #{version}", shell_output("#{bin}/kojira --version")
  end
end
