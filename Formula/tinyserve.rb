class Tinyserve < Formula
  desc "Local host manager for a single Mac mini running small Docker services"
  homepage "https://github.com/tinyserve/tinyserve"
  url "https://github.com/tinyserve/tinyserve/releases/download/v0.1.20/tinyserve_0.1.20_darwin_arm64.tar.gz"
  sha256 "e5c2a9f99f7dd8b43183c9ae5f57b1d5f38b11b4be18ff69f107d60eaf5f1c7b"
  version "0.1.20"

  def install
    bin.install "tinyserve"
    bin.install "tinyserved"
  end

  service do
    run [opt_bin/"tinyserved"]
    keep_alive crashed: true
    environment_variables TINYSERVE_API: "http://127.0.0.1:7070", PATH: std_service_path_env
    log_path var/"log/tinyserved.log"
    error_log_path var/"log/tinyserved.log"
    process_type :background
  end
end
