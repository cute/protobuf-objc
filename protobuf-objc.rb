require 'formula'

class ProtobufObjc < Formula
  homepage 'https://github.com/Superbil/protobuf-objc'
  url 'https://github.com/Superbil/protobuf-objc.git'
  sha1 '7dcd0d77c5aeb706510d67d157793fd689ad4073'

  head 'https://github.com/Superbil/protobuf-objc.git',
  :branch => 'develop'

  depends_on :autoconf
  depends_on :automake
  depends_on :libtool

  depends_on 'protobuf'

  def install
    ENV.prepend 'CXXFLAGS', '-DNDEBUG'
    system "./autogen.sh"
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--with-zlib"
    system "make", "install"
  end
end
