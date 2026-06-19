class Velocirepo < Formula
  desc "Fetch and aggregate open-source project metrics"
  homepage "https://github.com/jeroenjanssens/velocirepo"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_amd64.tar.gz"
      sha256 "a367c625773361a9bf83acbd1d5811ab76e87c1a1d15b4ee0ea0f2240eb20b89"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_arm64.tar.gz"
      sha256 "b8259bd9da6027f17ef09bf3a3a4b68bb1dc1dd423d7f83f11aaf8f651711391"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_amd64.tar.gz"
      sha256 "d4042d67426cab5d70726feab93e0d300535237bbff188af5833e974c34aa7cf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_arm64.tar.gz"
      sha256 "19be4e9829407c6f841ae817d1e72f8569a71e67e3409ae27e99601eef5f80e4"
    end
  end

  def install
    bin.install "velocirepo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/velocirepo version")
  end
end
