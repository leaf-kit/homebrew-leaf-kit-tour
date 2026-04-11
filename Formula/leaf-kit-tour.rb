class LeafKitTour < Formula
  desc "Interactive CLI installer for leaf-kit Markdown toolkit"
  homepage "https://github.com/leaf-kit/leaf-kit-tour"
  url "https://github.com/leaf-kit/leaf-kit-tour/archive/refs/tags/v0.4.3.tar.gz"
  sha256 "edca3bf3bbe3f8c0b1302f1c3b9be9080c05b54a06e00b3b4c1527280723937e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "leaf-kit-tour v#{version}", shell_output("#{bin}/leaf-kit-tour --version")
  end
end
