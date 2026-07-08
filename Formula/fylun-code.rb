class FylunCode < Formula
  desc "Terminal AI coding agent connected to your Fylun account (built on OpenCode, MIT)"
  homepage "https://fylun.ai/code"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.6/fylun-code-darwin-arm64.zip"
      sha256 "91955dd5b687befe64acc71a0bc0417a6c4fd25c4c2464d57832fb6760d8e971"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.6/fylun-code-darwin-x64.zip"
      sha256 "394c019b9738d2931021b03a1aae72ae70149837a9c15d038a9fe59711e1c409"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.6/fylun-code-linux-arm64.tar.gz"
      sha256 "d62754af0b9f9dcd263c65cb1e00c2287d0d1afad723a1042f11710a75e8c4c2"
    end
    on_intel do
      url "https://github.com/usefylun/fylun-code/releases/download/v0.1.6/fylun-code-linux-x64.tar.gz"
      sha256 "3b49f6ab4dcd31d4745e0ec042a2553c5e0cf8cf2bf3889e238613d32f8eb778"
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
