using Pkg

Pkg.activate(@__DIR__)
Pkg.develop(PackageSpec(path=joinpath(@__DIR__, "..")))
Pkg.instantiate()

using Documenter
using T4AMatrixCI

makedocs(
    modules=[T4AMatrixCI],
    sitename="T4AMatrixCI.jl",
)

deploydocs(
    repo="github.com/tensor4all/T4AMatrixCI.jl.git",
    devbranch="main",
)


