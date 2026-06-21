class Llmignore < Formula
  desc "Like .gitignore, but tells AI tools what NOT to read"
  homepage "https://github.com/horiastanxd/llmignore"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/horiastanxd/llmignore/releases/download/v0.1.1/llmignore-aarch64-apple-darwin.tar.gz"
      sha256 "ce9411710ff6558586ecbed9ede5b44fbce1bda59ccbd70c8e9f654ab989ab93"
    end
    on_intel do
      url "https://github.com/horiastanxd/llmignore/releases/download/v0.1.1/llmignore-x86_64-apple-darwin.tar.gz"
      sha256 "dfddd62ca1ea0fbe1802a1b6a3359ad0aa33b367064b56736ca2039a5bfc2fc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/horiastanxd/llmignore/releases/download/v0.1.1/llmignore-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9599273e5903556fcce07e5a6f3e41263d685279986af038e8fe1d71f6127927"
    end
    on_intel do
      url "https://github.com/horiastanxd/llmignore/releases/download/v0.1.1/llmignore-x86_64-unknown-linux-musl.tar.gz"
      sha256 "add50af72342ed5d0f0406f6ff311605a43eb4863cace568b0a6dedda055d64b"
    end
  end

  def install
    bin.install "llmignore"
  end

  test do
    assert_match "llmignore", shell_output("#{bin}/llmignore --version")
  end
end
