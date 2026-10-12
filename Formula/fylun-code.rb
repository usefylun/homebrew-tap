class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.25/fylun-code-darwin-arm64.zip"
      sha256 "099194cff9e84f880af1293d57d4b6efc9da909f93287b10cd0a93558d301253"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.25/fylun-code-darwin-x64.zip"
      sha256 "7c4e5205237d7c264b41d8cde796b884ec6c2557b9d979420b141966fab29f59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.25/fylun-code-linux-arm64.tar.gz"
      sha256 "753e8da8c4826402c371372e3f7ce302fa806ee74c0b8212fb16e568bc0d5a85"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.25/fylun-code-linux-x64.tar.gz"
      sha256 "52fb889276411e81163f3eea191f0228d27e11d9b718b3fee2ac808ccbd9bce7"
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
