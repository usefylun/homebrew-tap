class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.19/fylun-code-darwin-arm64.zip"
      sha256 "f90e1ab1d643128b9305ae8a6d2b75ffc3cc9c5067497180d23546b070d419c6"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.19/fylun-code-darwin-x64.zip"
      sha256 "63316eee49c85602e40b467d7878697f1f4ce7049a3b8e18155977ef7567e42f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.19/fylun-code-linux-arm64.tar.gz"
      sha256 "03309e6acd4f35ddba0695e850906250650b60a290c022d6ce631e112d4b7e90"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.19/fylun-code-linux-x64.tar.gz"
      sha256 "dd183aef754c73788ffe1d85d1bf16614a6185a63d627a46816fdcb016062425"
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
