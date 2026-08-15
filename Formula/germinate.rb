class Germinate < Formula
  desc "Serializable, provenance-carrying handoff protocol for multi-agent dev"
  homepage "https://github.com/flashesofbrilliance/germinate"
  version "0.1.0"
  license "MIT"

  # macOS single binary (Rust). Linux users install via npm until the
  # cross-platform CI release publishes a Linux tarball:  npm i -g germinate
  on_macos do
    on_arm do
      url "https://github.com/flashesofbrilliance/germinate/releases/download/v0.1.0/germinate-aarch64-apple-darwin.tar.gz"
      sha256 "ff8b5b07f7dff2e414be36686ab6e70d6af80a2268b430b0c8f6ee82876b75ff"
    end
    on_intel do
      url "https://github.com/flashesofbrilliance/germinate/releases/download/v0.1.0/germinate-x86_64-apple-darwin.tar.gz"
      sha256 "cbcd1137c41c8764a459be7e008b53986f55e0437a3ab8ed895dc505e124c225"
    end
  end

  on_linux do
    odie "No prebuilt Linux binary in germinate v0.1.0 yet. Install via npm instead: npm i -g germinate"
  end

  def install
    bin.install "germinate"
    # convenience alias, matching the npm package's `gm` bin
    bin.install_symlink "germinate" => "gm"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/germinate version")
  end
end
