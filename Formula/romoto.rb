class Romoto < Formula
  desc "Share a terminal session over SSH"
  homepage "https://github.com/ragamo/romoto"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.0/romoto-aarch64-apple-darwin.tar.gz"
      sha256 "cc6ada0993dc3ee03766a23c1c4c1bced5c55a2043f8f45e1ef5b78f5fbd1d88"
    end
    on_intel do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.0/romoto-x86_64-apple-darwin.tar.gz"
      sha256 "9239de88469fbd767e7249c9314b3a79b38c47fb08d9cd87be75f23bb843ccf9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.0/romoto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c6055a4ea415a6b4d4985b9adda386e750bc2a0ae34eda1d1c1c4345e438ee8"
    end
    on_intel do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.0/romoto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a114ad4057b9a81abab022d31c301a9e0ba0ae59691caff5131db89657ba29b"
    end
  end

  def install
    bin.install "romoto"
  end

  test do
    assert_match "romoto #{version}", shell_output("#{bin}/romoto --version")
  end
end
