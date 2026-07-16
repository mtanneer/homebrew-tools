class Gbm < Formula
  desc "Interactive htop-style git branch manager"
  homepage "https://github.com/mtanneer/tools.git.git-branch-manager"
  url "https://github.com/mtanneer/tools.git.git-branch-manager/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "5cebd7b6e76ff19192fff87b7035f80d4abe3557e65a97777ff00ada9d5cdb66"
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
