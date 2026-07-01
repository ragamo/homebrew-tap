class Lazyglab < Formula
  desc "TUI for GitLab and GitHub — merge requests and pipelines in your terminal"
  homepage "https://github.com/ragamo/lazyglab"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.2/lazyglab-aarch64-apple-darwin.tar.gz"
      sha256 "483df0202b004185424956502a9e5da41f2acf728d4d39d2eccecc3e378cc3c1"
    end
    on_intel do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.2/lazyglab-x86_64-apple-darwin.tar.gz"
      sha256 "286233be854f243de7489c09928a51251ee03281cf260e91baa0ae29db24f629"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.2/lazyglab-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "38b491c32548161dcc1faa3fcbd988fc3a54ed3e5448ac9d79f397a81fe40ab2"
    end
    on_intel do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.2/lazyglab-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ccaa7e8b7c2f6f0106364a8373fd87cc2bb96451816612ec34b345fe2fc04275"
    end
  end

  def install
    bin.install "lazyglab"
  end

  test do
    assert_match "lazyglab #{version}", shell_output("#{bin}/lazyglab --version")
  end
end
