class Parcela < Formula
  desc "Run every checkout of a project at its own local HTTPS URL"
  homepage "https://parcela.davafons.com/docs/"
  license "AGPL-3.0-only"

  depends_on "caddy"
  depends_on "f1bonacc1/tap/process-compose"

  on_macos do
    on_arm do
      url "https://github.com/davafons/parcela/releases/download/v0.2.0/parcela-aarch64-apple-darwin.tar.gz"
      sha256 "a14defab28f14b175718f8c4bf1ec69f1bc085d3650247f32e5ae2561400fdcf"
    end
    on_intel do
      url "https://github.com/davafons/parcela/releases/download/v0.2.0/parcela-x86_64-apple-darwin.tar.gz"
      sha256 "89a03a7cafb2fd6d8cd62d171fdea69a9824db0b3d765ab45671686158a36af2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davafons/parcela/releases/download/v0.2.0/parcela-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fbe915b91e888de7e878be10553055a2310533881fd9c9f44cb139c1ce50adfe"
    end
    on_intel do
      url "https://github.com/davafons/parcela/releases/download/v0.2.0/parcela-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e43fc1326929531f8f17d67036f274dc38301ac93a6ba9d420e14634863dd660"
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
