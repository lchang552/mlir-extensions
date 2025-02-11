builtin.module(convert-ptensor-to-linalg
    convert-shape-to-std
    arith-bufferize
    func.func(empty-tensor-to-alloc-tensor
            scf-bufferize
            linalg-bufferize
            tensor-bufferize
            bufferization-bufferize)
    func-bufferize
    func.func(finalizing-bufferize
            convert-linalg-to-parallel-loops)
    canonicalize
    fold-memref-alias-ops
    expand-strided-metadata
    lower-affine
    convert-scf-to-cf
    finalize-memref-to-llvm
    convert-func-to-llvm
    reconcile-unrealized-casts)
