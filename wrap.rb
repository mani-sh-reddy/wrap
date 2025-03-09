class Wrap < Formula
  desc "A collection of bash utilities wrapped and accessible via keywords"
  homepage "https://github.com/mani-sh-reddy/wrap"
  url "https://github.com/mani-sh-reddy/wrap", tag: "0.0.1"
  license "MIT"
  head "https://github.com/mani-sh-reddy/wrap.git"

  def install
    bin.install "wrap"
  end

  test do
    system "#{bin}/wrap", "select", "--options", "a", "b"
  end
end
