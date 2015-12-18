module Game.Step.Song where

import Data.Sequence (Seq)
import qualified Data.Sequence as S

import Game.Step.Internal (Dirs)

data HoldState = Start | Continue | End

data Note = Empty | Beat | Hold HoldState | Roll HoldState | Mine

type Steps = Dirs Note
                   
data Frame = Frame { frameSteps :: !Steps
                   , frameBPM :: !Int
                   }

newtype Song = Song { getFrames :: Seq Steps }
