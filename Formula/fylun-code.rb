class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.26/fylun-code-darwin-arm64.zip"
      sha256 "80930ba5bd0246afd6edebefe5be99f3371c1235c24279969e3cfe7f9be6f410"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.26/fylun-code-darwin-x64.zip"
      sha256 "97236179a8e1f59815c1b128893ac8f6a8f52c2d162672526edb37424b263e4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.26/fylun-code-linux-arm64.tar.gz"
      sha256 "df652f145e0577a71d88994b1497391aeff3aa54f7aed008debbad775ed1cd8d"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.26/fylun-code-linux-x64.tar.gz"
      sha256 "3d5913002687c9e5e4fd3735513662bceda54c524ce749ee428b2a956d3c5952"
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
