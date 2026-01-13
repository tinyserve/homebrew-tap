class Tinyserve < Formula
  desc "Local host manager for a single Mac mini running small Docker services"
  homepage "https://github.com/tinyserve/tinyserve"
  url "https://github.com/tinyserve/tinyserve/releases/download/v0.1.3/tinyserve_0.1.3_darwin_arm64.tar.gz"
  sha256 "13a02c8a306b32065d22d0e129969be7e6369a31e9dfc6140d792ce3e1a5c710"
  version "0.1.3"

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
