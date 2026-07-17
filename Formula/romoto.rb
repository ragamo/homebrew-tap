class Romoto < Formula
  desc "Share a terminal session over SSH"
  homepage "https://github.com/ragamo/romoto"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.1/romoto-aarch64-apple-darwin.tar.gz"
      sha256 "ce7f932605a8dfdd02c40310e9b8aea298ff7bd879abfe375f66179c8fff2a12"
    end
    on_intel do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.1/romoto-x86_64-apple-darwin.tar.gz"
      sha256 "b94bf1fb1e0c2135a7f6d054eb1105534e81449b95f2393e9891b8bb6f99108f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.1/romoto-aarch64-unknown-linux-musl.tar.gz"
      sha256 "169db798b17d51f4aa3bbf7a3f0fdb48470ba612f683d4f4782a172c51a57f61"
    end
    on_intel do
      url "https://github.com/ragamo/romoto/releases/download/v0.2.1/romoto-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ecddcdcec76d253d1faca9cc0d8c020d2afbb2bc6226c96b414062ef258697e7"
    end
  end

  def install
    bin.install "romoto"
  end

  test do
    assert_match "romoto #{version}", shell_output("#{bin}/romoto --version")
  end
end
