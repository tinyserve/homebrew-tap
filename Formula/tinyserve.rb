class Tinyserve < Formula
  desc "Local host manager for a single Mac mini running small Docker services"
  homepage "https://github.com/tinyserve/tinyserve"
  url "https://github.com/tinyserve/tinyserve/releases/download/v0.1.14/tinyserve_0.1.14_darwin_arm64.tar.gz"
  sha256 "6c21ae5aedbfa0f2d4f7632a1ca38a03bb97d5cb06493b5e61d9ecac8eeeae0c"
  version "0.1.14"

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
