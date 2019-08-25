Remove-Item ./snippets.*
Remove-Item ./target/release/deps/*snippets*
cargo rustc --release -- --emit asm,llvm-ir
Copy-Item ./target/release/deps/snippets-*.s ./snippets.s
Copy-Item ./target/release/deps/snippets-*.ll ./snippets.ll
