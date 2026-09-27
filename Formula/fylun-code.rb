class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.24/fylun-code-darwin-arm64.zip"
      sha256 "a12d3da54892db385feae71eb523b5e877b0499c7c42f3d8af7410182b533f7b"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.24/fylun-code-darwin-x64.zip"
      sha256 "5a95b394f748e62096e085cc203e519b78b646a870f97a085703805be3b75aff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.24/fylun-code-linux-arm64.tar.gz"
      sha256 "6311daf9dbb6f4c440a13c662e1cbd184dbf509c2476b8a4a765f425c7031e23"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.24/fylun-code-linux-x64.tar.gz"
      sha256 "283643873e95b6add12ebebbacbff9fd7325664a926d89f92b1e15d2c2da118c"
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
