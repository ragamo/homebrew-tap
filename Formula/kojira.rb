class Kojira < Formula
  desc "A TUI wrapper for Jira — backlog, boards, and more"
  homepage "https://github.com/ragamo/kojira"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/kojira/releases/download/v0.2.0/kojira-aarch64-apple-darwin.tar.gz"
      sha256 "85606d7f8c2886ada1e29d9413658ea91942ca4ee6847411b424fa0a5339a8fc"
    end
    on_intel do
      url "https://github.com/ragamo/kojira/releases/download/v0.2.0/kojira-x86_64-apple-darwin.tar.gz"
      sha256 "e374946f8505b4a7e23be138bd58e032ebf624adb4c319af49bc1198d38c333c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/kojira/releases/download/v0.2.0/kojira-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "184b37ce7fe9e7de5ef6d4315ada8ed4d9faef22284e9362c95454e9afe4fcc7"
    end
    on_intel do
      url "https://github.com/ragamo/kojira/releases/download/v0.2.0/kojira-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b3dc36763c3f3a1c7b01f2446cae35ae2ef4913fb8daa296b48de5cb415e9049"
    end
  end

  def install
    bin.install "kojira"
  end

  test do
    assert_match "kojira #{version}", shell_output("#{bin}/kojira --version")
  end
end
