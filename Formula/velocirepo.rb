class Velocirepo < Formula
  desc "Fetch and store open-source project metrics"
  homepage "https://github.com/jeroenjanssens/velocirepo"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_amd64.tar.gz"
      sha256 "d3cf62c0824f9eb0586f0a4ddc740929b8544caa2c3ee0b818a3b01413700fdb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_arm64.tar.gz"
      sha256 "db4a531f10eb0c0e21a50f2f3bb721fc29dca3366602006d6847a7956ab94ae9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_amd64.tar.gz"
      sha256 "f862960d635222b07d4a0560339ac67e239d8a58a60c43f4ac8f813add2ebc6b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_arm64.tar.gz"
      sha256 "fd73510a29256f051563681764820bf47a41ad99847ede2ff2ffb8567b9a0bf1"
    end
  end

  def install
    bin.install "velocirepo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/velocirepo version")
  end
end
