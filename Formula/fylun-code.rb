class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.18/fylun-code-darwin-arm64.zip"
      sha256 "f042607cf5c0fae305a413aa7789c00e0d445c464e98149c3ffa53ccf559ad05"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.18/fylun-code-darwin-x64.zip"
      sha256 "170fe694a406e3d2f6d8beb8ef30d63c6f57684d415c8dd77dc5a87ca2878f14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.18/fylun-code-linux-arm64.tar.gz"
      sha256 "ff5cf8a2a38fd57a34673b3d4fccc2361939d28d5bba29545350b1d26a2eee5c"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.18/fylun-code-linux-x64.tar.gz"
      sha256 "05c3cd5797cf7f99c41f8a4455e539546304c4b6660a7dd8b0c3e49d7edb722c"
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
