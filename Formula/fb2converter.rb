class Apg < Formula
  desc "Unified converter of FB2 files into epub2, kepub, mobi and azw3 formats"
  homepage "https://github.com/rupor-github/fb2converter"
  url "https://github.com/rupor-github/fb2converter/archive/refs/tags/v1.70.0.tar.gz"
  license "GNU General Public License v3.0"
  sha256 "3b0ece67d504bdf73736dea430223ce82aac813293cc91f905843b750b8a0fdd"
  head "https://github.com/rupor-github/fb2converter.git", branch: "master"

  # depends_on "go" => :build

  def install
    system "go", "run", "build.go"
 end

  test do
    system bin/"fb2c", "--version"
  end
end
