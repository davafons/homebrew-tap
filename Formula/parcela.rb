class Parcela < Formula
  desc "Run every checkout of a project at its own local HTTPS URL"
  homepage "https://parcela.run/docs/"
  license "AGPL-3.0-only"

  depends_on "caddy"

  on_macos do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.5.1/parcela-aarch64-apple-darwin.tar.gz"
      sha256 "406371e7d8186f831480f26db52188ff14070e7c215d3cbe0150991afd40a3f8"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.5.1/parcela-x86_64-apple-darwin.tar.gz"
      sha256 "a69368a63ca5008e8279cba4a9f7219a91bcf7ccd760a91fd35ab0cffd5bbb17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.5.1/parcela-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14a52ba89992daa72fecf00abb250514cc3c2c585bedf40e586a270ef9701fd0"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.5.1/parcela-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5d1e74339066a8aa8d595cce85959d4e1e1fb288500018717eae0834644c1469"
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
