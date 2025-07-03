class Clidoku < Formula
  include Language::Python::Virtualenv

  desc "A simple command-line sudoku game"
  homepage "https://github.com/barneyjackson/clidoku"
  url "https://files.pythonhosted.org/packages/source/c/clidoku/clidoku-0.1.1.tar.gz"
  sha256 "ad890be46f05bbfe5246f8dbb5388ee1dad98d2b032d396fe9985bdda71a1b19"
  license "BSD-3-Clause"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/clidoku", "--version"
  end
end
