class Tinyserve < Formula
  desc "Local host manager for a single Mac mini running small Docker services"
  homepage "https://github.com/tinyserve/tinyserve"
  url "https://github.com/tinyserve/tinyserve/releases/download/v0.0.7/tinyserve_0.0.7_darwin_arm64.tar.gz"
  sha256 "c313b1fc59bfb8a64423028501f194bb781ae57ef9dc679709bc393df3935586"
  version "0.0.7"

  def install
    bin.install "tinyserve"
    bin.install "tinyserved"
  end
end
