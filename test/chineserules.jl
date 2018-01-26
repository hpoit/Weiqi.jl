using Weiqi

import Weiqi: empty, white, black, cb, NewPosition, bp, wp

@testset "assign NewPosition((coords), color)" begin
np = NewPosition(bp, (1,2), black)
np = NewPosition(wp, (1,2), white)

np = NewPosition(bp, (1,2), empty) # cannot happen
np = NewPosition(wp, (1,2), empty) # cannot happen

np.coords
np.stone
end

@testset "set and access coords and color to board" begin
# Set coordinate (1,2) as black on board
cb.array[1,2] = black;
cb.array[1,2] = white;
cb.array[1,2] = empty;

# Access coordinate (1,2) on board, with associated color
cb.array[1,2]
cb.array[1,3]

# Empty all board
cb.array[1:19,1:19] = empty;
end
