class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.12/fylun-code-darwin-arm64.zip"
      sha256 "ca7060deac1515c655b1b1eb8d77b81d6d379c280ccde63b830132821f6a4332"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.12/fylun-code-darwin-x64.zip"
      sha256 "0b0c40d0078199a25ae15e2e3344ac16400cba6ce2a5ea3c2a09ad22a3c0bec1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.12/fylun-code-linux-arm64.tar.gz"
      sha256 "537954d32aa56c2439fda412fd28392979e18875ded7f4302ccaa23ccb8efe50"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.12/fylun-code-linux-x64.tar.gz"
      sha256 "55465c91ff315e54b2403931de31fef5d9310f43b1d77a9711ce645125c78671"
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
