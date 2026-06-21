class Velocirepo < Formula
  desc "Fetch and store open-source project metrics"
  homepage "https://github.com/jeroenjanssens/velocirepo"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_amd64.tar.gz"
      sha256 "d310ad2127f093cff3cd9b7afaff74291b17b6bb69b2d68c293404bfe6822048"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_arm64.tar.gz"
      sha256 "9746228057f601cf5546bae56613a3c315b02bdacccbbca2aa8dd5545f0f0dfa"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_amd64.tar.gz"
      sha256 "33504382af14b8ad8d0eaf81e09be6181d4929c14011f731e487e525d339a1ea"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_arm64.tar.gz"
      sha256 "af96bc2da61b679f422358020abfb56cd434314aa59855857de26a0f8c8299f4"
    end
  end

  def install
    bin.install "velocirepo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/velocirepo version")
  end
end
