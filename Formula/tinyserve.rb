class Tinyserve < Formula
  desc "Local host manager for a single Mac mini running small Docker services"
  homepage "https://github.com/tinyserve/tinyserve"
  url "https://github.com/tinyserve/tinyserve/releases/download/v0.1.0/tinyserve_0.1.0_darwin_arm64.tar.gz"
  sha256 "047184ec96d01213f8fd2750437e7acead9cd230c9b21faa70816486b8f1f313"
  version "0.1.0"

  def install
    bin.install "tinyserve"
    bin.install "tinyserved"
  end
end
