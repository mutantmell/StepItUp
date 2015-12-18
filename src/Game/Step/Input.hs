module Game.Step.Input where

import Data.Sequence (Seq)
import qualified Data.Sequence as S

import Game.Step.Internal (Dirs)

data InputType = Press | Hold | Release | None -- These inputs should be smoothed elsewhere

type Input = Dirs InputType
