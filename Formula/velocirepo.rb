class Velocirepo < Formula
  desc "Fetch and store open-source project metrics"
  homepage "https://github.com/jeroenjanssens/velocirepo"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_amd64.tar.gz"
      sha256 "0f751593a306c70c05988523349f458910cbd218b822ca6287e2509fd1c27b61"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_arm64.tar.gz"
      sha256 "de1dc0dd8a14de3d66d514aa6ceed2b0358650bdd023bc507326d74a6880b889"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_amd64.tar.gz"
      sha256 "271e7a9cb0d16dd03d3c9b6824e85058b5e23d6f66715e89c60b0331ac4d2bad"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_arm64.tar.gz"
      sha256 "4296f2fd21003645fdbf3ed6081f96804230d12e51f65f9c7a7f76d2227482cd"
    end
  end

  def install
    bin.install "velocirepo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/velocirepo version")
  end
end
