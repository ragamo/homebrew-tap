class Romoto < Formula
  desc "Share a terminal session over SSH"
  homepage "https://github.com/ragamo/romoto"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/romoto/releases/download/v0.1.0/romoto-aarch64-apple-darwin.tar.gz"
      sha256 "60fd8006f8001efa8bb7c3e2a60705375cd7839e21125ca0065d6cdfbd89de88"
    end
    on_intel do
      url "https://github.com/ragamo/romoto/releases/download/v0.1.0/romoto-x86_64-apple-darwin.tar.gz"
      sha256 "f761e59328cdff273f29bc4d0f65e33a3d2c47339c33e67f33622c7ef9f84695"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/romoto/releases/download/v0.1.0/romoto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6acf7bad3b320d1566886745a0675f1d1ebb741a8000740b1808ec11de53e538"
    end
    on_intel do
      url "https://github.com/ragamo/romoto/releases/download/v0.1.0/romoto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3545ddc02b695cd8620ff95aa0f1d24874fbdea78d2219adbb03917ce3ade5f"
    end
  end

  def install
    bin.install "romoto"
  end

  test do
    assert_match "romoto #{version}", shell_output("#{bin}/romoto --version")
  end
end
