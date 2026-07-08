class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.8/fylun-code-darwin-arm64.zip"
      sha256 "c26d519bd41b8d8312d10478843ebb1e2c5fcb9775e49da683e8097193e61d0f"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.8/fylun-code-darwin-x64.zip"
      sha256 "fa89c2aa4feb61fc36e4f222426aec4457eff0a58e9b1022751dd51865e008fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.8/fylun-code-linux-arm64.tar.gz"
      sha256 "71f207ab09c9efd92446fb005c0c9ada4826fc39e4b91172d4a01d42ad4784bf"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.8/fylun-code-linux-x64.tar.gz"
      sha256 "5233b38df7d200723650bbcd2b056b2d91f8ebe87c01613ed458ae20be6012c1"
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
