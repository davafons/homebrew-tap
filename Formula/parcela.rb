class Parcela < Formula
  desc "Run every checkout of a project at its own local HTTPS URL"
  homepage "https://parcela.run/docs/"
  license "AGPL-3.0-only"

  depends_on "caddy"

  on_macos do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.5.2/parcela-aarch64-apple-darwin.tar.gz"
      sha256 "3e160473b25fbe4f2dc747686c512f41e0557b21af9f2ae62281c4e470b446b1"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.5.2/parcela-x86_64-apple-darwin.tar.gz"
      sha256 "48bb8818008b1631e42e40c342d1d5b5b404c9f62518aa83fc14905b128d6fb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.5.2/parcela-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0942617a21c2d7ca4b54dc7ad78f8eb09e7cfed6268199b6275d09168999b31e"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.5.2/parcela-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "00eedd77f133554d1db7c0b2235ead9de04d6d24188adb16b669a2b3c53c34f0"
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
