class Velocirepo < Formula
  desc "Fetch and aggregate open-source project metrics"
  homepage "https://github.com/jeroenjanssens/velocirepo"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_amd64.tar.gz"
      sha256 "963ac6a7e8249dd81d99f663223b75f66571072776e41bb3b91723f7e72acade"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_arm64.tar.gz"
      sha256 "a5aa97624a073171258024a203ba67e8e625614bc698a3f7b81142d9cd18e2bf"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_amd64.tar.gz"
      sha256 "01a2d741dbfc1382a1869460aaae37be4f65e67aafd988531a0e5f33d55f8d62"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_arm64.tar.gz"
      sha256 "70ba3632a6f4757252f4eaa2124fa7ce60418d79ee151f6c607190768cc16b3a"
    end
  end

  def install
    bin.install "velocirepo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/velocirepo version")
  end
end
