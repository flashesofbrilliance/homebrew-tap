class RosettaShell < Formula
  desc "Lossless shell/env translation (bash 3.2 <-> zsh <-> POSIX) + CI portability gate"
  homepage "https://github.com/flashesofbrilliance/rosetta-shell"
  url "https://github.com/flashesofbrilliance/rosetta-shell/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "ac6d9884006a057b458c7d32a69f6b3f90db7732d5f3f472470bab4357c121a0"
  license "MIT"

  def install
    # Support files (lib/, conformance/, examples/) travel with the CLI; the
    # bin resolves them via its own path. Symlink bin into Homebrew's bin so the
    # script's symlink-chain resolution lands back in libexec.
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/rosetta"
  end

  test do
    assert_match "rosetta-shell", shell_output("#{bin}/rosetta version")
    system bin/"rosetta", "doctor"
    # crossrun a trivial portable script must pass across the shells present.
    (testpath/"ok.sh").write("#!/bin/sh\necho hi\n")
    assert_match "PASS", shell_output("#{bin}/rosetta crossrun #{testpath}/ok.sh")
  end
end
