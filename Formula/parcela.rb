class Parcela < Formula
  desc "Run every checkout of a project at its own local HTTPS URL"
  homepage "https://parcela.davafons.com/docs/"
  license "AGPL-3.0-only"

  depends_on "caddy"

  on_macos do
    on_arm do
      url "https://github.com/davafons/parcela/releases/download/v0.4.0/parcela-aarch64-apple-darwin.tar.gz"
      sha256 "b146a399a8526be76fa05f1ceed9093633287210c57664ad27448e2c4e142df7"
    end
    on_intel do
      url "https://github.com/davafons/parcela/releases/download/v0.4.0/parcela-x86_64-apple-darwin.tar.gz"
      sha256 "e50ac8e9cd9a87a16bb2286a6bd70b939cad44205aca738de568e0bf2b9758b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davafons/parcela/releases/download/v0.4.0/parcela-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "02a5440bf597508d0f5b6a48c5e2af95b4db4317a0b9b303b66181ed0a1fb0b5"
    end
    on_intel do
      url "https://github.com/davafons/parcela/releases/download/v0.4.0/parcela-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "638ffd66713258731769be439ac48e0d053780407472d36eb8fa5bc5ed00e3b2"
    end
  end

  def install
    bin.install "parcela"
    doc.install "LICENSE", "COPYRIGHT", "THIRD_PARTY_NOTICES.txt"
  end

  test do
    assert_match "parcela #{version}", shell_output("#{bin}/parcela --version")
  end
end
