module Main where

----------------------A-------------------------
type OatmealTemp = Int --Tempreature of stove. It is in [0, 20]
-- Interp. determine current state of heat

tooHot, tooCold, perfect :: OatmealTemp
tooHot = 20
tooCold = 0
perfect = 10

fn_for_oatmealTemp :: OatmealTemp -> a
fn_for_oatmealTemp t = (undefined t)
----------------------B-------------------------
data Adjustment = Left | Right | Nothing
-- Interp. where knob should be turned

fn_for_adjustment :: Adjustment -> a
fn_for_adjustment t = case t of 
				Main.Left -> undefined
				Main.Right -> undefined
				Main.Nothing -> undefined

----------------------C-------------------------
oatmeal_temp_to_adjustment :: OatmealTemp -> Adjustment
oatmeal_temp_to_adjustment temp = if temp > perfect
			   then Main.Left
			   else if temp < perfect
				  then Main.Right
				  else Main.Nothing

main = print("Ok")
