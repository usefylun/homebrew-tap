class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.15/fylun-code-darwin-arm64.zip"
      sha256 "342615fac9fcba4433a51a866d0ea6b543ada4361867ec0e0d115d1a733f8a41"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.15/fylun-code-darwin-x64.zip"
      sha256 "41a1f3630f497beb58170f374ce2b0ba1f76433c95d43a6b698f43401d747106"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.15/fylun-code-linux-arm64.tar.gz"
      sha256 "4240c5e554a667b52bcd43c00416a5be1033a2f96a501db4364e0bf5ae50af53"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.15/fylun-code-linux-x64.tar.gz"
      sha256 "cd84d21c28423f3851db7f057ac852f102ffa4a8aa6c2f3544b3c0794c2b3892"
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
