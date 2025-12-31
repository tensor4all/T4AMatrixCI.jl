module T4AMatrixCI

using LinearAlgebra
import LinearAlgebra: rank, diag
import Base: size

include("util.jl")
include("abstractmatrixci.jl")
include("matrixci.jl")
include("matrixaca.jl")
include("matrixlu.jl")
include("matrixluci.jl")

# Types
export AbstractMatrixCI
export MatrixCI, MatrixACA, MatrixLUCI
export rrLU

# Functions from abstractmatrixci.jl
export row, col, submatrix, localerror, findnewpivot

# Functions from matrixci.jl
export AtimesBinv, AinvtimesB
export Iset, Jset, nrows, ncols, pivotmatrix, leftmatrix, rightmatrix
export availablerows, availablecols, rank, firstpivotvalue, evaluate
export addpivotrow!, addpivotcol!, addpivot!, crossinterpolate

# Functions from matrixaca.jl
export uk, vk, setcols!, setrows!

# Functions from matrixlu.jl
export rrlu, rrlu!, arrlu
export left, right, rowindices, colindices, npivots, pivoterrors, lastpivoterror
export solve, submatrixargmax, diag

# Functions from matrixluci.jl
export colmatrix, rowmatrix, colstimespivotinv, pivotinvtimesrows

end
