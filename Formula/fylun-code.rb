class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.28/fylun-code-darwin-arm64.zip"
      sha256 "d6e2b2e1460a15d3a883cf57d73f895708a29e350db7f3a678d99f0d73dad047"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.28/fylun-code-darwin-x64.zip"
      sha256 "e9ae46541ecc07f616893d957c7c87df63b3654474ec4f78b13c88cc6c2799a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.28/fylun-code-linux-arm64.tar.gz"
      sha256 "3b19ff7324fda4920b9c0f2f64d34f8e31851662aad03f8271ae0a6e596d4bae"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.28/fylun-code-linux-x64.tar.gz"
      sha256 "7758e6a3baaf8ee6eb939a704b186822eb384558e12b3556d3257a02417d51da"
    end
  end

  def install
    bin.install "fylun-code"
    bin.install "fylun-code-bin"
    bin.install_symlink bin/"fylun-code" => "fylun"
  end

  test do
    system bin/"fylun-code", "--version"
  end
end
