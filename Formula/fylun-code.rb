class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.10/fylun-code-darwin-arm64.zip"
      sha256 "621b4d5dae221ca75cf70f665cdd1f14f95d73be5c05cb9d9caa10bf372906d7"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.10/fylun-code-darwin-x64.zip"
      sha256 "21d1a8ef20eadcbbedcf2c6090253bb8c62280369396bab604a8e06b86290ddb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.10/fylun-code-linux-arm64.tar.gz"
      sha256 "a62b94d0f0ddbaf3d20b7aebc8916e9207dcddab7d21b143c726849b3d60405c"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.10/fylun-code-linux-x64.tar.gz"
      sha256 "788ab682786f72b11b9b2718ddbcd72fe759cc806964a9f7fc88a128ecc4952e"
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
