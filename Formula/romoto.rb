class Romoto < Formula
  desc "Share a terminal session over SSH"
  homepage "https://github.com/ragamo/romoto"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.2/romoto-aarch64-apple-darwin.tar.gz"
      sha256 "8ef8ab647e4d7b00777b67b2af5b1821fd62f6b67d5b205007cecbb3f7a83d50"
    end
    on_intel do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.2/romoto-x86_64-apple-darwin.tar.gz"
      sha256 "4bd79fb331eeab51225498e37eaa97ccf083c1239090768f6fb0c7615da99cd0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.2/romoto-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9bba19b3c437098cd8e9b3d84a629331b67f3add26e0649b76e9af987e2174c8"
    end
    on_intel do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.2/romoto-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2c2e2f80aa95e20cbb2c46c99820a5dbee1f5be95095e3778fc6b15324fd130a"
    end
  end

  def install
    bin.install "romoto"
  end

  test do
    assert_match "romoto #{version}", shell_output("#{bin}/romoto --version")
  end
end
