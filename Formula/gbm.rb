class Gbm < Formula
  desc "Interactive htop-style git branch manager"
  homepage "https://github.com/mtanneer/tools.git.git-branch-manager"
  url "https://github.com/mtanneer/tools.git.git-branch-manager/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "08202284ebddc5516111f206627907dfdd8ec423bb22df1f314f157014dcaaa2"
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
