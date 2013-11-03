%% Pretty printing table (see also SLL.generated.pp)
[
   Program               -- V [ H[ KW["program"] _1] _2],
   Program.2:iter-star   -- V [_1],
   FDef                  -- H hs=0 [_1 KW["("] _2 KW[")"] KW["="] _3],
   FDef.2:iter-star-sep  -- H[_1 KW[","]],
   GDef                  -- H hs=0 [_1 KW["("] _2 KW[")"] KW["="] _3],
   GDef                  -- H hs=0 [_1 KW["("] _2 KW[","] _3 KW[")"] KW["="] _4],
   GDef.3:iter-star-sep  -- H hs=0 [_1 KW[","]],
   MainDef               -- H [KW["main"] KW["="] _1],
   FCall                 -- H hs=0 [_1 KW["("] _2 KW[")"]],
   FCall.2:iter-star-sep -- _1 KW[","],
   Ctor                  -- H hs=0 [_1 KW ["("] _2 KW[")"]],
   Ctor.2:iter-star-sep  -- _1 KW [","],
   Pat                   -- H hs=0 [_1 KW["("] _2 KW[")"]],
   Pat.2:iter-star-sep   -- H hs=0 [_1 KW[","]]
]
