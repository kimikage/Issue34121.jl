module Issue34121

if isdefined(Broadcast, :_sametype) && !isdefined(Broadcast, :axistype)
    axistype(a::T, b::T) where T = a
    axistype(a, b) = UnitRange{Int}(a)
    Broadcast._bcs1(a, b) = Broadcast._bcsm(b, a) ? axistype(b, a) : (Broadcast._bcsm(a, b) ? axistype(a, b) : throw(DimensionMismatch("arrays could not be broadcast to a common size")))
end

end
