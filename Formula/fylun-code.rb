class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.9/fylun-code-darwin-arm64.zip"
      sha256 "5b309b8b431f2d05bc040cadcfdf4713d166aab1442d6719a836c508968a0c5d"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.9/fylun-code-darwin-x64.zip"
      sha256 "f03db93f3faef2581cafd12936573393bec88de08e31816be732920aa8af5d92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.9/fylun-code-linux-arm64.tar.gz"
      sha256 "052fe3c4ff06b1ca4f5064914765881d0421f0953c09ccb954b0c1fb064e172e"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.9/fylun-code-linux-x64.tar.gz"
      sha256 "e7e81b2e1ef111f2e1fa391ff649e74bd85ee72b9fb296263bc4b180d2e21aba"
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
