class Lazyglab < Formula
  desc "TUI for GitLab and GitHub — merge requests and pipelines in your terminal"
  homepage "https://github.com/ragamo/lazyglab"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.6/lazyglab-aarch64-apple-darwin.tar.gz"
      sha256 "036e19e8c4628af9f2facef192d71c889d79de4e76dd3815ed2c26d1abafbd24"
    end
    on_intel do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.6/lazyglab-x86_64-apple-darwin.tar.gz"
      sha256 "f342756dd5ce3329c427f1958515ee4c521b26705298e0d99c19c56211d78410"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.6/lazyglab-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3b53c20881dc0a8135403a7c67b191b91d0c63f0017ff4f963401f3372812309"
    end
    on_intel do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.6/lazyglab-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dbe0cf2bddea165f2f04caeaafbb0b06c91884efed9cfc5a16c8c061a10fcbf8"
    end
  end

  def install
    bin.install "lazyglab"
  end

  test do
    assert_match "lazyglab #{version}", shell_output("#{bin}/lazyglab --version")
  end
end
