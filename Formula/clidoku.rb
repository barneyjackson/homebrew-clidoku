class Clidoku < Formula
  include Language::Python::Virtualenv

  desc "A simple command-line sudoku game"
  homepage "https://github.com/barneyjackson/clidoku"
  url "https://files.pythonhosted.org/packages/source/c/clidoku/clidoku-0.1.2.tar.gz"
  sha256 "d375bccaaaa5542366ab106e57596a09351fb3ed23154294ae9bb6a324c506a6"
  license "BSD-3-Clause"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/clidoku", "--version"
  end
end
