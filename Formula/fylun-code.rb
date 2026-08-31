class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.23/fylun-code-darwin-arm64.zip"
      sha256 "47beee3a6bbc512b90a804821e6e42ef897e634974499d3f1a89c28b70c8a60f"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.23/fylun-code-darwin-x64.zip"
      sha256 "9fee87addf7d8624f1cf50e51d19b222a8d38785061a384c8a93a6b603ef5a8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.23/fylun-code-linux-arm64.tar.gz"
      sha256 "3573a4dad399780cf8f355af2728fcac397a9f183b1de47700b3026898597a2a"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.23/fylun-code-linux-x64.tar.gz"
      sha256 "b3f14cf411a675d38bcc7b881997d3a91eb07dd75ddd988970af5cbfd720c2bd"
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
