//STUDENT NAME: Nika Kapanadze
//STUDENT ID: 200051467

//Hero is at the position of agent P (variable), if agent P's position is identical to Hero's position 
at(P) :- pos(P,X,Y) & pos(hero,X,Y).
!check(slots).

//Initial goal
!started.

/*
* In the event that the agent must achieve "started", under all circumstances, print the message.
*/
+!started :true
   <- .print("I'm not scared of that smelly Goblin!").



//move to the next slot if hero is not present at coin,vase and gem location and neither at the end of the forest
+!check(slots) : not coin(hero) & not vase(hero) & not gem(hero) & not pos(hero,7,7)
     <- next(slot);
	    !check(slots).
+!check(slots).



//checks if hero is located at coin location, it prints coin
@allthree[atomic]
+coin(hero) : true
<- .print("coin");
// queries the current position, and saves hero's position
   ?pos(hero,X,Y);
   +pos(last,X,Y);
// takes coin to goblin
   !take(coin,goblin);
// moves back to current position
       !at(last);
// carry's on action
       !check(slots).

	   
	   
@allthreee[atomic]
+vase(hero) : true
<- .print("vase");
// queries the current position, and saves hero's position
   ?pos(hero,X,Y);
   +pos(prev,X,Y);
// takes vase to goblin
   !take1(vase,goblin);
// moves back to current position
        !at(prev);
// carry's on action
        !check(slots).

		
		
@allthre[atomic]
+gem(hero) : true
<- .print("gem");
// queries the current position, and saves hero's position
   ?pos(hero,X,Y);
   +pos(before,X,Y);
// takes gem to goblin
   !take2(gem,goblin);
// moves back to current position
        !at(before);
// carry's on action
        !check(slots).

		
		
//Pick up G, go to L and drop G
+!take(G,L) : true
   <- !ensure_pick(G);
      !at(L);
          drop(G).

		  
		  
//Pick up V, go to L and drop V 
+!take1(V,L) : true
   <- !ensure_pick1(V);
      !at(L);
          drop(V).

		  
		  
//Pick up E, go to L and drop E	  
+!take2(E,L) : true
   <- !ensure_pick2(E);
      !at(L);
          drop(E).

		  
		  
// Wheb hero is at coin position it picks up coin and rechecks action. 
+!ensure_pick(G) : coin(hero)
    <- pick(coin);
	   !ensure_pick(G).
// If the coin is already taken moves to other places
+!ensure_pick(_).



// Wheb hero is at coin position it picks up coin and rechecks action. 
+!ensure_pick1(V) : vase(hero)
    <- pick(vase);
	   !ensure_pick1(V).
// If the coin is already taken moves to other places
+!ensure_pick1(_).



// Wheb hero is at coin position it picks up coin and rechecks action. 
+!ensure_pick2(E) : gem(hero)
    <- pick(gem);
	   !ensure_pick2(E).
// If the coin is already taken moves to other places
+!ensure_pick2(_).



//if we are at L we have success
+!at(L) : at(L).



//otherwise move to L and try again.
//at ;
+!at(L) <- ?pos(L,X,Y);
       move_towards(X,Y);
	   !at(L).
	   


