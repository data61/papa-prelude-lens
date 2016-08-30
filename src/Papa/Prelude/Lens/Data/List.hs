module Papa.Prelude.Lens.Data.List(
  head
, tail
, last
, init
) where

import Control.Lens
import Control.Lens.Cons
import Data.Maybe

head ::
  Cons s s a a =>
  s
  -> Maybe a
head =
  (^? _head)

tail ::
  Cons s s a a =>
  s
  -> Maybe s
tail =
  (^? _tail)

last ::
  Snoc s s a a =>
  s
  -> Maybe a
last =
  (^? _last)

init ::
  Snoc s s a a =>
  s
  -> Maybe s
init =
  (^? _init)
