class Parcela < Formula
  desc "Run every checkout of a project at its own local HTTPS URL"
  homepage "https://parcela.run/docs/"
  license "AGPL-3.0-only"

  depends_on "caddy"

  on_macos do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.5.0/parcela-aarch64-apple-darwin.tar.gz"
      sha256 "3288bddaf2959afb76a6f1c4799882766a2488d8d3af96e117e29e436eb832d6"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.5.0/parcela-x86_64-apple-darwin.tar.gz"
      sha256 "9b4ccb106d9947b5bbc11771933a055859fc1cd0c792a84cc65b78e1109587cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.5.0/parcela-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "908923e7533937344777fe98ea069a33f33e63175ae5bd85d8e80a5563df7661"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.5.0/parcela-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a167e681ad1efeaa7745346970e147d02a33078dae816199756f541d8b5cfa1a"
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
