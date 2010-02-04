require 'formula'

class Zlib <Formula
  url 'http://www.zlib.net/zlib-1.2.3.tar.gz'
  md5 'debc62758716a169df9f62e6ab2bc634'

  def homepage
    Formula.factory('mad').homepage
  end

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
