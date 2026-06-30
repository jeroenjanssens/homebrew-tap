class Velocirepo < Formula
  desc "Track your open-source project's pulse across package registries, GitHub, and the web"
  homepage "https://github.com/jeroenjanssens/velocirepo"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_amd64.tar.gz"
      sha256 "f451a9cd9b0b4ebbb5ce45820fed973e4b49260983dcd47ce522b7bd4e88e6f7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_arm64.tar.gz"
      sha256 "854717b68f47bb2105af475d64d32d89c1beef70fd797f436e842f09136e2d2a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_amd64.tar.gz"
      sha256 "87d971454df1169704357df8348383833b4e9465b96d484e42ad2edca5f56650"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_arm64.tar.gz"
      sha256 "37030922582ed35ec607c540a28a0b79263f61fea7393251a85dc18b29c1cd20"
    end
  end

  def install
    bin.install "velocirepo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/velocirepo version")
  end
end
