// NONUNIFORM: https://github.com/dafny-lang/dafny/issues/4119
// RUN: %testDafnyForEachCompiler "%s" --refresh-exit-code=0 -- --relax-definite-assignment

function tst(x: nat): nat {
    x + 1
}

method Main() {
  var f := tst;
  print f, "\n";
  print tst, "\n";
}
