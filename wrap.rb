class Wrap < Formula
  desc "Bash utilities collection wrapped and accessible via keywords"
  homepage "https://github.com/mani-sh-reddy/wrap"
  url "https://github.com/mani-sh-reddy/wrap", tag: "v0.0.1"
  license "MIT"
  head "https://github.com/mani-sh-reddy/wrap.git", branch: "main"

  def install
    bin.install "wrap.sh" => "wrap"
  end

  test do
    system bin/"wrap", "select", "--options", "a", "b"
  end
end
