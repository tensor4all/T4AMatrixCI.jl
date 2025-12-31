using Test
using T4AMatrixCI
using LinearAlgebra

@testset "T4AMatrixCI.jl" begin
    @testset "Aqua" begin
        using Aqua
        Aqua.test_all(T4AMatrixCI; ambiguities=false, deps_compat=false)
    end

    @testset "JET" begin
        if VERSION >= v"1.9"
            using JET
            JET.test_package(T4AMatrixCI; target_defined_modules=true)
        end
    end

    include("test_matrixlu.jl")
    include("test_matrixci.jl")
    include("test_matrixaca.jl")
    include("test_matrixluci.jl")
end
