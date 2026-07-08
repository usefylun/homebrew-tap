class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.7/fylun-code-darwin-arm64.zip"
      sha256 "4b52c8269a145a04e9b39cbc368ce5dd5c0a3c5523a02fd004cb9dbada29ef39"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.7/fylun-code-darwin-x64.zip"
      sha256 "0e32330bd0d190fa643e5d1553d0e97a5f4a1f517a105c2a048feaf95477748b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.7/fylun-code-linux-arm64.tar.gz"
      sha256 "c642bdb1cf4bf4b70a1e82b513d56f233ce772205c9bf13d3dc080d052c89a81"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.7/fylun-code-linux-x64.tar.gz"
      sha256 "f1a3cca0b9935e751caba9eabb9b7d64757c81869e30a79c6f7d2bf2f9eda387"
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
