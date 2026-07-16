class Gbm < Formula
  desc "Interactive htop-style git branch manager"
  homepage "https://github.com/mtanneer/tools.git.git-branch-manager"
  url "https://github.com/mtanneer/tools.git.git-branch-manager/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "258509774d8ba8d29f62485b3c532d584938cad2522e2d1387a89d224f16afbf"
  license "MIT"

  depends_on "git" => :recommended

  def install
    inreplace "gbm", 'GBM_VERSION=""', "GBM_VERSION=\"#{version}\""
    bin.install "gbm"
  end

  test do
    system "#{bin}/gbm", "--version"
  end
end
