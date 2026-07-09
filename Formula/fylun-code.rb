class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.11/fylun-code-darwin-arm64.zip"
      sha256 "1743c49ae9cf129c240fc7bf93f6294790ae3b52ed2ac18f395f6ed2cbf8d5fc"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.11/fylun-code-darwin-x64.zip"
      sha256 "b5c287d412f8e88d574e9ed9c219a683cb5d56940c9294fcc4251a90cbff6a11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.11/fylun-code-linux-arm64.tar.gz"
      sha256 "370764c7ba1c0943f0dd29c0816eccd591a18665c3a975e4e62994d29a05b2a5"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.11/fylun-code-linux-x64.tar.gz"
      sha256 "46e3b731b53d1bf9374e437373988ecec03c9b49eb07fbeb6b3f1aa61164c1cf"
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
