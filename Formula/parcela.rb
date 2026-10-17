class Parcela < Formula
  desc "Run every checkout of a project at its own local HTTPS URL"
  homepage "https://parcela.davafons.com/docs/"
  version "0.1.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/davafons/parcela/releases/download/v0.1.0/parcela-aarch64-apple-darwin.tar.gz"
      sha256 "5db3a7b55e8280998fa045704ecf4194bb0cae35d600eac5511b4124f1e31cb3"
    end
    on_intel do
      url "https://github.com/davafons/parcela/releases/download/v0.1.0/parcela-x86_64-apple-darwin.tar.gz"
      sha256 "288c39b80f365a19855c8b2bd857e264217d25374f3046282f4c756dbe4daffa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davafons/parcela/releases/download/v0.1.0/parcela-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "30fdc8361db67b1d689b87641a52aa2680cc5c801d69d8f5621e767a52b0874c"
    end
    on_intel do
      url "https://github.com/davafons/parcela/releases/download/v0.1.0/parcela-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "114ddb61c3e783be0f0d85c7bbb6067e8b16d06f64db7a763679f681cf88d47b"
    end
  end

  depends_on "caddy"
  depends_on "f1bonacc1/tap/process-compose"

  def install
    bin.install "parcela"
    doc.install "LICENSE", "COPYRIGHT", "THIRD_PARTY_NOTICES.txt"
  end

  test do
    assert_match "parcela #{version}", shell_output("#{bin}/parcela --version")
  end
end
