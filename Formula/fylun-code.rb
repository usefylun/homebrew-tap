class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.17/fylun-code-darwin-arm64.zip"
      sha256 "f8f1ddbb469c928915349c325fc5dff7064693ab07d9485cdd8dc9a000b33ce7"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.17/fylun-code-darwin-x64.zip"
      sha256 "26fd9411ab7d02406e082de08b360ad78de35a4e9efeb8fc087aa9a878a513c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.17/fylun-code-linux-arm64.tar.gz"
      sha256 "b564bfc2261d45447a0fb40bf27ec4d7b7fa046a03a3db2342c03be34d97df58"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.17/fylun-code-linux-x64.tar.gz"
      sha256 "312977206c85e84f8d9dc44caa05d8fc132c4a011440e4452b48eb2fbeb06eb2"
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
