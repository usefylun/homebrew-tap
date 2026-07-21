class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.16/fylun-code-darwin-arm64.zip"
      sha256 "8d3e14461daa183433e8acc5afde1af5cb19c95de8bc674f1be1292f6760c019"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.16/fylun-code-darwin-x64.zip"
      sha256 "6ec7ff626f02b33d76347d2aded56eb3506d7850a1aaa29bbb63ede0dfb024ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.16/fylun-code-linux-arm64.tar.gz"
      sha256 "9b492f42e3f4922b8c374be9a8980a4e13d9a249f7b15acd9dcb1fa114728ac1"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.16/fylun-code-linux-x64.tar.gz"
      sha256 "9d6df0fb3791586abcdcbefc598afe0cb7ed274fac44f452ef69215998eab9c1"
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
