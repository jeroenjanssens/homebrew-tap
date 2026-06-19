class Velocirepo < Formula
  desc "Fetch and aggregate open-source project metrics"
  homepage "https://github.com/jeroenjanssens/velocirepo"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_amd64.tar.gz"
      sha256 "f9f19a6c75ac0dd1f22887d09e8f67cd4cb277dc4b9afbcc00a19350ff2e6b1c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_arm64.tar.gz"
      sha256 "5759c8e0fdd8f14c861210822ff639b41edd6c8cb65f6d87d6800a7fb8823c9e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_amd64.tar.gz"
      sha256 "092dea0e48383745d4d9ae65d6376646476a0b20032dfc12280b773601c4182d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_arm64.tar.gz"
      sha256 "9a155f886384d23aad5abff423b25444931b2a97204ca94d01812cabe4e96077"
    end
  end

  def install
    bin.install "velocirepo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/velocirepo version")
  end
end
