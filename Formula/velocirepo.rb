class Velocirepo < Formula
  desc "Track your open-source project's pulse across package registries, GitHub, and the web"
  homepage "https://github.com/jeroenjanssens/velocirepo"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_amd64.tar.gz"
      sha256 "c19d6bbd1c730248f5338c4d50e066fa9b102e20dca1e890b3d849b7a3c5ec37"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_arm64.tar.gz"
      sha256 "4611c464a7781e38c856b909931f15fbc94528161f6ad328e3be5850a486c534"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_amd64.tar.gz"
      sha256 "0acc3fe0f582c440cd5c5a43bba2e8a606c220387fd1407afa92936e04ecb6a5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_arm64.tar.gz"
      sha256 "e3e49af2414302e908e1e0a05e4c1ce1959912e19a90c4f9235a0985af34844d"
    end
  end

  def install
    bin.install "velocirepo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/velocirepo version")
  end
end
