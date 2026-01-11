class Tinyserve < Formula
  desc "Local host manager for a single Mac mini running small Docker services"
  homepage "https://github.com/tinyserve/tinyserve"
  url "https://github.com/tinyserve/tinyserve/releases/download/v0.0.8/tinyserve_0.0.8_darwin_arm64.tar.gz"
  sha256 "8d934a23b7e9a65187e61740e805b03db93818fe1275ab06a6dcce4062f15663"
  version "0.0.8"

  def install
    bin.install "tinyserve"
    bin.install "tinyserved"
  end
end
