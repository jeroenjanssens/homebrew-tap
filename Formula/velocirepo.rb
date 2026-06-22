class Velocirepo < Formula
  desc "Fetch and store open-source project metrics"
  homepage "https://github.com/jeroenjanssens/velocirepo"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_amd64.tar.gz"
      sha256 "4387661d505aba32a3d0b431adc0251b26bf632a8ad2d4f7832516e9a0ad428b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_arm64.tar.gz"
      sha256 "46d73799dbbd4bf6e6e622708c88f04139748b8b0752516581743b0e0aea387b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_amd64.tar.gz"
      sha256 "1f87599012c410ffc997d32ea133c98e3610beeefb3f0320e49e9ef09b1248fa"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_arm64.tar.gz"
      sha256 "b1bd24a690a6faeeb6d36acd6c49e5b9f2f9e67f000d131fcaa327bf9a09cc90"
    end
  end

  def install
    bin.install "velocirepo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/velocirepo version")
  end
end
