class Parcela < Formula
  desc "Run every checkout of a project at its own local HTTPS URL"
  homepage "https://parcela.davafons.com/docs/"
  license "AGPL-3.0-only"

  depends_on "caddy"
  depends_on "f1bonacc1/tap/process-compose"

  on_macos do
    on_arm do
      url "https://github.com/davafons/parcela/releases/download/v0.3.0/parcela-aarch64-apple-darwin.tar.gz"
      sha256 "cf08a60c620a14411b6c7c856640bb70293dfef90708b4331c5c2343d46a53fb"
    end
    on_intel do
      url "https://github.com/davafons/parcela/releases/download/v0.3.0/parcela-x86_64-apple-darwin.tar.gz"
      sha256 "e3fe07b6d2a56b216991ff2b2b4f8e341329f80c799a3dd2cf8fa43dd18da258"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davafons/parcela/releases/download/v0.3.0/parcela-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "922179c4ccd63a6b8f2037c5e4432b74e9200e6b9c2560d65f500c2db1e68e81"
    end
    on_intel do
      url "https://github.com/davafons/parcela/releases/download/v0.3.0/parcela-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dc0b028571c4edd13f92907fb2a004c4359645bd26680ad57a62e648d24e8df4"
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
