class Romoto < Formula
  desc "Share a terminal session over SSH"
  homepage "https://github.com/ragamo/romoto"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.3/romoto-aarch64-apple-darwin.tar.gz"
      sha256 "d34107a73b07ce7d611d397b2848bc668f6b3867584df1c38e0795e1d8769aaf"
    end
    on_intel do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.3/romoto-x86_64-apple-darwin.tar.gz"
      sha256 "0b7d36a43844e78f075cd8e85a4557b1607a7e0f6667bab87d51c5336940188b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.3/romoto-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b16f0369e1158a651111e0981788a96e0e44671662a77d3d966b9d375a8ca0f3"
    end
    on_intel do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.3/romoto-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dc34bb4d353203619c9ba58207b023b75d2632bf8bd5fa8c6e721aa4e86230fd"
    end
  end

  def install
    bin.install "romoto"
  end

  test do
    assert_match "romoto #{version}", shell_output("#{bin}/romoto --version")
  end
end
