{ mkDerivation, aeson, async, attoparsec, base, bifunctors, binary
, blaze-builder, bytestring, containers, criterion
, data-default-class, deepseq, enclosed-exceptions, exceptions
, hashable, HUnit, mersenne-random-pure64, monad-control, mtl
, network, pipes, process, protocol-buffers, pureMD5, QuickCheck
, random, resource-pool, riak-protobuf, semigroups, stdenv, stm
, tasty, tasty-hunit, tasty-quickcheck, template-haskell, text
, time, transformers, transformers-base, unliftio, unliftio-core
, unordered-containers, vector, yaml
}:
mkDerivation {
  pname = "riak";
  version = "1.1.2.4";
  src = ./.;
  libraryHaskellDepends = [
    aeson async attoparsec base bifunctors binary blaze-builder
    bytestring containers data-default-class deepseq
    enclosed-exceptions exceptions hashable mersenne-random-pure64
    monad-control network pipes protocol-buffers pureMD5 random
    resource-pool riak-protobuf semigroups stm text time transformers
    transformers-base unliftio unliftio-core unordered-containers
    vector
  ];
  testHaskellDepends = [
    aeson base bytestring containers data-default-class HUnit mtl
    process QuickCheck riak-protobuf semigroups tasty tasty-hunit
    tasty-quickcheck template-haskell text yaml
  ];
  benchmarkHaskellDepends = [ base bytestring criterion semigroups ];
  homepage = "http://github.com/riak-haskell-client/riak-haskell-client";
  description = "A Haskell client for the Riak decentralized data store";
  license = "unknown";
}
