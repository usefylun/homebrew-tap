class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.23/fylun-code-darwin-arm64.zip"
      sha256 "4e23055dea319446f8ddd8ac1ba27ee11c78a1f9594693722b52e3d54362c46d"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.23/fylun-code-darwin-x64.zip"
      sha256 "ffd51eb970f727ba8736b498ee89a5ac317d2b0ef9c55c0c15462104aa45b081"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.23/fylun-code-linux-arm64.tar.gz"
      sha256 "c6ad5936286e6a6836cb1cc781e604b8e232d857175e7ee9bf5f3d3dfdc409c0"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.23/fylun-code-linux-x64.tar.gz"
      sha256 "8e9abb54e6e8c8953ea3dbbab351f4dcaf92765696bd864b1f4ad86a5fe38296"
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
