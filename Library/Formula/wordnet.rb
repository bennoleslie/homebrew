require 'formula'

class Wordnet <Formula
  url 'http://wordnetcode.princeton.edu/3.0/WordNet-3.0.tar.bz2'
  homepage 'http://wordnet.princeton.edu/'
  md5 '89b4db7c6840ce69a8e315a3f83d996b'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    ENV.deparallelize
    system "make install"
  end
end
