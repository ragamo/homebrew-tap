class Romoto < Formula
  desc "Share a terminal session over SSH"
  homepage "https://github.com/ragamo/romoto"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.4/romoto-aarch64-apple-darwin.tar.gz"
      sha256 "b435c0771f811abbe9f4e1d6a3900473ab9757cb4580c3936d34576ca998853b"
    end
    on_intel do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.4/romoto-x86_64-apple-darwin.tar.gz"
      sha256 "33e6c7a10c5912aa711e782046b0d35a2347162e5ce33f9d47e234d78e7eb790"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.4/romoto-aarch64-unknown-linux-musl.tar.gz"
      sha256 "37313f05f22f5485e004261d7130de873fee7f42b70095e0eee21e96c74f4d85"
    end
    on_intel do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.4/romoto-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9e66478558cda442e9ae33d9ce8ce3933a872e59e1eda50d6c25a0ce9f6a8948"
    end
  end

  def install
    bin.install "romoto"
  end

  test do
    assert_match "romoto #{version}", shell_output("#{bin}/romoto --version")
  end
end
