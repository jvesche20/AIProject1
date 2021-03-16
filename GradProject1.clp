(defrule hasCakeIngredients
   (butter yes)
   (sugar yes)
   (Eggs yes)
   (Vanilla yes)
   (Flour yes)
   (Leavening yes)
   (Salt yes)
   (Milk yes)
=>
    (assert (hasCakeIngredients yes))
)

(defrule bakedCake
	(hasCakeIngredients yes)
	(oven yes)
	(temperature 375)
	(time 25)
=>
	(assert (bakedCake yes))
)

(defrule mixCake
	(spoon yes)
	(bowl yes)
	(hasCakeIngredients yes)
=>
	(assert (mixCake yes))
)

(defrule CakeBurnt
	(bakedCake yes)
	(burnt yes)
	(color dark)
	
=>
	(assert (CakeBurnt yes))
)

(defrule startOverCake
	(CakeBurnt yes)
	(mixCake no)
	(hasCakeIngredients no)
	
=>
	(assert (startOverCake yes))
)

(defrule addFrosting
	(startOverCake no)
	(frosting yes)
	(spoon yes)
	
=>
	(assert (addFrosting yes))
)

(defrule pizzaDough
   (yeast yes)
   (water  yes)
   (oil yes)
   (salt yes)
   (sugar yes)
   (flour yes)
=>
    (assert (pizzaDough yes))
)

(defrule pizzaSauce
   (tomatoSauce yes)
   (onion  yes)
   (italianSeasoning yes)
   (garlicPowder yes)
   (salt yes)
   (pepper yes)
=>
    (assert (pizzaSauce yes))
)

(defrule mixSauce
	(spoon yes)
	(bowl yes)
	(pizzaSauce yes)
=>
	(assert (mixSauce yes))
)

(defrule mixDough
	(spoon yes)
	(bowl yes)
	(pizzaDough yes)
=>
	(assert (mixDough yes))
)

(defrule bakedPizza
	(pizzaSauce yes)
	(pizzaDough yes)
	(cheese yes)
	(temperature 375)
	(mixSauce yes)
	(mixDough yes)
	(time 12)
=>
	(assert (bakedPizza yes))
)
(defrule burntPizza
	(bakedPizza yes)
	(burnt yes)
	(color dark)
=>
	(assert (burntPizza yes))
)

(defrule startOverPizza
	(pizzaSauce no)
	(pizzaDough no)
	(burntPizza yes)
	
=>
	(assert (startOverPizza yes))
)

(defrule cutPizza
	(startOverPizza no)
	(pizzaCutter yes)
=>
	(assert (cutPizza yes))
)

(defrule eatPizza
	(cutPizza yes)
	(hot no)
=>
	(assert (eatPizza yes))
)

(defrule cutCake
	(startOverCake no)
	(cakeCutter yes)
=>
	(assert (cutCake yes))
)

(defrule eatCake
	(cutCake yes)
	(hot no)
=>
	(assert (eatCake yes))
)

(defrule eatDinner
	(eatCake yes)
	(eatPizza no)
=>
	(assert (eatDinner yes))
)

(defrule saveCake
	(eatDinner yes)
	(leftOver yes)
=>
	(assert (saveCake yes))
)(

defrule savePizza
	(eatDinner yes)
	(leftOver yes)
=>
	(assert (savePizza yes))
)
