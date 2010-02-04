require 'formula'

class Libiconv <Formula
  url 'http://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.13.1.tar.gz'
  md5 '7ab33ebd26687c744a37264a330bbe9a'

  def homepage
    Formula.factory('mad').homepage
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug"
    system "make install"
  end
end
