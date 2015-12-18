module Game.Step.Song where

import Data.Sequence (Seq)
import qualified Data.Sequence as S

data HoldState = Start | Continue | End

data Note = Empty | Beat | Hold HoldState | Roll HoldState | Mine

data Steps = Steps { stepUp :: !Note
                   , stepRight :: !Note
                   , stepDown :: !Note
                   , stepLeft :: !Note
                   }
                   
newtype Song = Song { getFrames :: Seq Steps }
