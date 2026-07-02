class Lazyglab < Formula
  desc "TUI for GitLab and GitHub — merge requests and pipelines in your terminal"
  homepage "https://github.com/ragamo/lazyglab"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.5/lazyglab-aarch64-apple-darwin.tar.gz"
      sha256 "b373ab1ce55fed8f4a81f6c1863364e2b91e6c57005fd97f7bac7616c4715473"
    end
    on_intel do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.5/lazyglab-x86_64-apple-darwin.tar.gz"
      sha256 "046f3b9aac6d1ec4e7172a693ad4caf1dd76deb7d006cf624f6c3d450037e5fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.5/lazyglab-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "745bde26d07764deef68b6095107626bce915cd91d81cbc9662e015960c56428"
    end
    on_intel do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.5/lazyglab-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c1d5200c178311156cf76e3541f0894a63007157dc937c42125bd1c5c317f91"
    end
  end

  def install
    bin.install "lazyglab"
  end

  test do
    assert_match "lazyglab #{version}", shell_output("#{bin}/lazyglab --version")
  end
end
