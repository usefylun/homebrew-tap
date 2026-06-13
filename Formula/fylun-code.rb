class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.4/fylun-code-darwin-arm64.zip"
      sha256 "2254c72d6dd0b9c2756dfb34bb40a4ec240abfff9ee60a9027f50f2911e71487"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.4/fylun-code-darwin-x64.zip"
      sha256 "cf4ce3952664a92e97a765ea0f8f3137971492dbbdcbe5e7b5932db35f4cab98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.4/fylun-code-linux-arm64.tar.gz"
      sha256 "b096d49ead051d100ff91a37efcce31c8a89ccd7a4c5b5587fac17ef12425340"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.4/fylun-code-linux-x64.tar.gz"
      sha256 "dff6a6246bbf513ad694d2c5831fb8a715c3bccc4b728e22ef08c19ec317a453"
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
