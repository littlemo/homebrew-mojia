# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Mohand < Formula
  include Language::Python::Virtualenv

  desc "Python shortcut command boot tool"
  homepage "https://github.com/littlemo/mohand"
  url "https://files.pythonhosted.org/packages/74/06/19fd93dd133aa3cf023e8871bfe6ba9372d0771e81017b2314d45eac631b/mohand-1.2.0-py2.py3-none-any.whl"
  sha256 "51640972b20d0f4189781f96c5ec64c9339358873fae29e0f664cf85e37139c8"
  license "LGPL-3.0-or-later"

  depends_on "python@3.7"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    virtualenv_install_with_resources
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test mohand`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
