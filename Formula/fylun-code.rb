class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.13/fylun-code-darwin-arm64.zip"
      sha256 "a76af4e49ba76d663646b608678b1aada883380b6bd96c5d871bad3be74fe871"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.13/fylun-code-darwin-x64.zip"
      sha256 "e23dad07676baef8059ebfc53c9123ba63a9d2a4f5de3bf19206361878e4cc4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.13/fylun-code-linux-arm64.tar.gz"
      sha256 "da45310a0996b7e05d422fbc7bba1711dc72993f258aeea4f33ee049ca4bc6e5"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.13/fylun-code-linux-x64.tar.gz"
      sha256 "2f3a94b65d9ff3d649097d6fd7bafe86eb6db34ed6a19dd0084ce6fbb316f9fc"
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
