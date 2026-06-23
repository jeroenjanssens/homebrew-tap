class Velocirepo < Formula
  desc "Track your project's pulse across package registries, GitHub, and the web"
  homepage "https://github.com/jeroenjanssens/velocirepo"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_amd64.tar.gz"
      sha256 "a36676599507b282bd551c1724c63c07b32be2363c61305e211f8da56f47f2bc"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_arm64.tar.gz"
      sha256 "1b6ed8f1720cbfeedf571a476ba362bd0e8453b43f19bba2f04c3cf3333c1157"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_amd64.tar.gz"
      sha256 "33ada75b78d072d62ebbbd1432a29431cec034a70ad5beb003b5c7490077e030"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_arm64.tar.gz"
      sha256 "66746cde7ba39fc8b3d951abe732ffed627ee1239b97b98b8ae840bf115e5ec4"
    end
  end

  def install
    bin.install "velocirepo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/velocirepo version")
  end
end
