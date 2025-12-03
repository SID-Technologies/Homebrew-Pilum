class Pilum < Formula
  desc "Cloud-agnostic deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/sid-technologies/pilum"
  url "https://github.com/sid-technologies/pilum/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "<GENERATED_SHA256>"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"pilum"
  end

  test do
    assert_match "pilum", shell_output("#{bin}/pilum --help")
  end
end
