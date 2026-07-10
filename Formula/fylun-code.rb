class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.14/fylun-code-darwin-arm64.zip"
      sha256 "f3733630fc97c284ef219325600d25540e102e7c250dcc3aa74df42c98487b38"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.14/fylun-code-darwin-x64.zip"
      sha256 "91477550d2503b39774636398fd361532e7b4e2a384eeb3a5c5c191fe1d32df6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.14/fylun-code-linux-arm64.tar.gz"
      sha256 "a6cbd729fe86699f02be7b5c6350e7712fbcc9b29b4699ad23f52d2eed6322f4"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.14/fylun-code-linux-x64.tar.gz"
      sha256 "7855859766fa02921379ed543e148fb7cde969e21fa36ba46b7621654c7ff924"
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
