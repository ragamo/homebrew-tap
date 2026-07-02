class Lazyglab < Formula
  desc "TUI for GitLab and GitHub — merge requests and pipelines in your terminal"
  homepage "https://github.com/ragamo/lazyglab"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.4/lazyglab-aarch64-apple-darwin.tar.gz"
      sha256 "4413aa51d1b5b22ca2f734748c9b3bb376d068c33f8bd8fe574fd667829d002c"
    end
    on_intel do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.4/lazyglab-x86_64-apple-darwin.tar.gz"
      sha256 "283cd76d3c231bb480104871490ce88874529c5db5a4652c102c4065c2a8eb71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.4/lazyglab-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db1bf9f9217ab1d6eda0522afb0668399369fa30b2d7639533e0cbdcc742720a"
    end
    on_intel do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.4/lazyglab-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe54d2c1e9930a8c6f67cc239b3f7c99942e9703215050facadd5e372b65bc1f"
    end
  end

  def install
    bin.install "lazyglab"
  end

  test do
    assert_match "lazyglab #{version}", shell_output("#{bin}/lazyglab --version")
  end
end
