class Velocirepo < Formula
  desc "Track your project's pulse across package registries, GitHub, and the web"
  homepage "https://github.com/jeroenjanssens/velocirepo"
  version "0.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_amd64.tar.gz"
      sha256 "b825f61636ff0bcc94f5ac82205eb4f5fa64d07efdaa7ce6fd08903b75812ded"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_darwin_arm64.tar.gz"
      sha256 "6338ef0b5ef6f0e9a50805adae374e22bf8f79b3ff2a148014c207c6972e6fd0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_amd64.tar.gz"
      sha256 "9215a362734102a1046e6e64ac0c636b5b43e50aae40d01c80b20b9a7682b84d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeroenjanssens/velocirepo/releases/download/v#{version}/velocirepo_#{version}_linux_arm64.tar.gz"
      sha256 "0985652a58baebd0f67be3bc2edd68952ff7d2006bf47031392b08b80f82b2b3"
    end
  end

  def install
    bin.install "velocirepo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/velocirepo version")
  end
end
