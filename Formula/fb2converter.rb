class Fb2converter < Formula
  # insltall binary fb2c and kindlegen
  # for build from source need additional steps
  desc "Unified converter of FB2 files into epub2, kepub, mobi and azw3 formats"
  homepage "https://github.com/rupor-github/fb2converter"
  version "1.71.0"
  url "https://github.com/rupor-github/fb2converter/releases/download/v1.71.0/fb2c_darwin_amd64.zip"
  license "GNU General Public License v3.0"
  sha256 "9c65d6cad107cedacbbb41fb2fb948bf03cf4d85a43e95849a688c1029f1d97d"
  head "https://github.com/rupor-github/fb2converter.git", branch: "master"

  def install
    bin.install "fb2c", "kindlegen"
  end

  test do
    system bin/"fb2c", "--version"
    system bin/"kindlegen"
  end
end
