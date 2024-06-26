# Package

version = "0.1.0"
author = "lost"
description = "uuidv7 for nim lang"
license = "MIT"
srcDir = "src"

# Dependencies

requires "nim >= 2.0.0"

task installBenchDeps, "install deps for bench":
  exec "nimble install criterion -y"
  exec "nimble install uuid4 -y"

task bench, "run bench":
  exec "nimble installBenchDeps"
  exec "nim c -r -d:release --opt:speed bench/bench1.nim"

task docs, "generate docs":
  exec "nimble doc --index:on --project --out:docs src/uuid7.nim"
