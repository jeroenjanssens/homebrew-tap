class Velocirepo < Formula
  desc "Fetch and aggregate open-source project metrics"
  homepage "https://github.com/jeroenjanssens/velocirepo"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_amd64.tar.gz"
      sha256 "d921088288dd09ba1280b60839446b5e1315c4f338ebbd411300e5d3c455c1c5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_arm64.tar.gz"
      sha256 "74419843757455e119a366fc48de3cf443ff94721baddd8e97484c1b860a6497"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_amd64.tar.gz"
      sha256 "c93221488a468613522444eaf3c21c25c778b5f743f3d3cdd550e4c5bfb0a32b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_arm64.tar.gz"
      sha256 "68a2374d82ea2d7409ab88dfa3de220a3667d6a6acbc2b3be23931bd41f33cae"
    end
  end

  def install
    bin.install "velocirepo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/velocirepo version")
  end
end
