[
   Program               -- KW["program"] _1 _2,
   Program.2:iter-star   -- _1,
   MainDef               -- KW["main"] KW["="] _1,
   Expr                  -- _1,
   FDef                  -- _1 KW["("] _2 KW[")"] KW["="] _3,
   FDef.2:iter-star-sep  -- _1 KW[","],
   GDef                  -- _1 KW["("] _2 _3 KW[")"] KW["="] _4,
   Pat                   -- _1 KW["("] _2 KW[")"],
   Pat.2:iter-star-sep   -- _1 KW[","],
   DVar                  -- _1,
   FCall                 -- _1 KW["("] _2 KW[")"],
   FCall.2:iter-star-sep -- _1 KW[","],
   Ctor                  -- _1 KW["("] _2 KW[")"],
   Ctor.2:iter-star-sep  -- _1 KW[","],
   Var                   -- _1
]