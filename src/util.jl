function randomsubset(
    set::AbstractArray{ValueType}, n::Int
)::Array{ValueType} where {ValueType}
    n = min(n, length(set))
    if n <= 0
        return ValueType[]
    end

    c = copy(set[:])
    subset = Array{ValueType}(undef, n)
    for i in 1:n
        index = rand(1:length(c))
        subset[i] = c[index]
        deleteat!(c, index)
    end
    return subset
end

function pushrandomsubset!(subset, set, n::Int)
    topush = randomsubset(setdiff(set, subset), n)
    append!(subset, topush)
    nothing
end
