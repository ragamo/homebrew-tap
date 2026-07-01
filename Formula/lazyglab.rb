class Lazyglab < Formula
  desc "TUI for GitLab and GitHub — merge requests and pipelines in your terminal"
  homepage "https://github.com/ragamo/lazyglab"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.3/lazyglab-aarch64-apple-darwin.tar.gz"
      sha256 "fab49a8488e4f0550bfd858dc19e92445958799f71b0af53b4bd9dfb835f8635"
    end
    on_intel do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.3/lazyglab-x86_64-apple-darwin.tar.gz"
      sha256 "37683bb31f56ce4c0445aef7db59488fb723079a7e24dfbe6b4542c6957fbd4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.3/lazyglab-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "624341b79d9db0281ae6bef68791647d94ae4861f9760a89fb06801c4178d05e"
    end
    on_intel do
      url "https://github.com/ragamo/lazyglab/releases/download/v0.1.3/lazyglab-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d1a2e425a6cb1bb32ec8088dbc915be938e336b17823167be2567118fd91bb9"
    end
  end

  def install
    bin.install "lazyglab"
  end

  test do
    assert_match "lazyglab #{version}", shell_output("#{bin}/lazyglab --version")
  end
end
