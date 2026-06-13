class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.5/fylun-code-darwin-arm64.zip"
      sha256 "4f685253cc71d4482186850298de7153810ef983fcb839b79dfe1f61d7760f9d"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.5/fylun-code-darwin-x64.zip"
      sha256 "a1991162e5f6b12c36e77b3f7bdbab2d09928bcf33337feb6c10fab0bba3a665"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.5/fylun-code-linux-arm64.tar.gz"
      sha256 "6574395b36e9ab123fbec02d53c2db907fbb5558bd3b715e204c7432bd3534d3"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.5/fylun-code-linux-x64.tar.gz"
      sha256 "1eb3f182942e6b9143e47f65b50d53c871ac1953c9d1f675cf837c1bd803f98a"
    end
  end

  def install
    bin.install "fylun-code"
    bin.install_symlink bin/"fylun-code" => "fylun"
  end

  test do
    system bin/"fylun-code", "--version"
  end
end
