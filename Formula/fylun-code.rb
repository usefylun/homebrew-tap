class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.22/fylun-code-darwin-arm64.zip"
      sha256 "bb3bb710024d30d9e316d523501fa1dcf506b57dee1bbf8dcbffe45a06b0fbd4"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.22/fylun-code-darwin-x64.zip"
      sha256 "0908e5ade85ed68b17572ad3c083b1afc161e1f5344926db4929f766aeb33059"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.22/fylun-code-linux-arm64.tar.gz"
      sha256 "75b945e2b09353f96e28e1e5710d0667585df3bbb886e02cf193852cb6ca3870"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.22/fylun-code-linux-x64.tar.gz"
      sha256 "8423fb3c7cfb066a7d4e1a7d22bd88c8f0ce9b3e05c7d06f7f7ef300f885d61c"
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
