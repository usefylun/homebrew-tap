class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.27/fylun-code-darwin-arm64.zip"
      sha256 "120efd326765b2e44e7039729f142ccb45774160eb91d469e3510f9add32eed6"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.27/fylun-code-darwin-x64.zip"
      sha256 "a01b227ee7d6735d5de2e00f2816c3c28dd13be73b34e4db78ced549bd513057"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.27/fylun-code-linux-arm64.tar.gz"
      sha256 "d159439f99f49af0494865c6d071f38eb7ba8b016faa1273020f8aa69d21e279"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.27/fylun-code-linux-x64.tar.gz"
      sha256 "f5ff3ee1079efeecb3816a8af3c13f643055a95ebed4c5961edb5d3d21f83a3d"
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
