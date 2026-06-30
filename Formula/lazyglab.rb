class Lazyglab < Formula
  desc "TUI for GitLab and GitHub — merge requests and pipelines in your terminal"
  homepage "https://github.com/ragamo/lazyglab"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.1/lazyglab-aarch64-apple-darwin.tar.gz"
      sha256 "5e6ba8d1e8c9e8fd7c00956ccc5c3c8aa491a3f41a8acf4d84e5a4e704eaf2ea"
    end
    on_intel do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.1/lazyglab-x86_64-apple-darwin.tar.gz"
      sha256 "2383f7b9af71ade20ba5ab9292ebf202fa8e3e540f865f135c1b64385de0069e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.1/lazyglab-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "558145744a1f7e1d349a9cc8256eb95e3a18bbdce5bf799e850c48e3b0241dcd"
    end
    on_intel do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.1/lazyglab-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "36c156022020b52d19372af7239395b19bb0e2f047a104f7694b2ae61b99c035"
    end
  end

  def install
    bin.install "lazyglab"
  end

  test do
    assert_match "lazyglab #{version}", shell_output("#{bin}/lazyglab --version")
  end
end
