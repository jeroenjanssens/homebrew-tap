class Velocirepo < Formula
  desc "Track your project's pulse across package registries, GitHub, and the web"
  homepage "https://github.com/jeroenjanssens/velocirepo"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_amd64.tar.gz"
      sha256 "ef5b91fc3235ccc1a43af769122feeeb4bb82aee7976abff5f369fe86eead994"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_arm64.tar.gz"
      sha256 "debee3f4ffe9876fb753e41fd78b7520b06d4e47e3dc1ce66a0cf8fc01977eac"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_amd64.tar.gz"
      sha256 "f62d2b38cff98a975a1cb76255b9e2cd9dc5127d53fb7d8705ecacabd85cd757"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_arm64.tar.gz"
      sha256 "ad4e66d4b06a6dc3e03cd6d6ecb4c6c55f59e11fb248b2678349a78547f0cdcb"
    end
  end

  def install
    bin.install "velocirepo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/velocirepo version")
  end
end
