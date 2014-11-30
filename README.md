# Protocol Buffers, Objective C iOS5

This is a modified ARC enabled version of the [Protocol Buffers in Objective C][protobuf-objc] project. It is optimized for iOS5 and up. This version is updated for Protobuf 2.5.

Protocol Buffers are a way of encoding structured data in an efficient yet extensible format.
This project is based on an implementation of Protocol Buffers from Google.  See the
[Google protobuf project][g-protobuf] for more information.

[g-protobuf]: http://code.google.com/p/protobuf/
[protobuf-objc]: https://github.com/booyah/protobuf-objc


# Usage

I use [homebrew](http://brew.sh/) to install it, you must install [homebrew](http://brew.sh/) first and use this commend.

````
brew tap superbil/protobuf
brew install protobuf-objc
````

This will install protobuf and protobuf-objc compiler, after that you can use this command to compiler you `proto` file

````
protoc --objc_out objc Example.proto
````
  Because you want Objctive-C classes, you use the `--objc_out` option

This generates the following files in your specified destination directory (objc):

* `Example.pb.h`, the header which declares your generated classes.
* `Example.pb.m`, which contains the implementation of your classes.

# Credits

- David Bonnefoy
- Superbil

Regwez Inc.
-------------------------------------------------------------------------------
- Ragy Eleish <ragy@regwez.com>

Booyah Inc.
-------------------------------------------------------------------------------
- Jon Parise <jon@booyah.com>


Google Protocol Buffers, Objective C
-------------------------------------------------------------------------------
- Cyrus Najmabadi  (http://code.google.com/p/metasyntactic/wiki/ProtocolBuffers)
- Sergey Martynov  (http://github.com/martynovs/protobuf-objc)


Google Protocol Buffers
-------------------------------------------------------------------------------
- Kenton Varda, Sanjay Ghemawat, Jeff Dean, and others
