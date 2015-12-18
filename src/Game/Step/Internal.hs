module Game.Step.Internal where

data Dirs a = Dirs { dirUp :: !a
                   , dirRight :: !a
                   , dirDown :: !a
                   , dirLeft :: !a
                   }
