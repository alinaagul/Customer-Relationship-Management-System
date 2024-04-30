/* CM
 * Author: HP
 * Creation date: 6/8/2023
 */
MACHINE
  
cm
SETS cm_STATUS = {stopped,running}
VARIABLES 
                          state, customer,sales,serve, next
INVARIANT 
                        state ∈ cm_STATUS ∧
sales ∈ ℕ ∧ customer ∈ ℕ ∧ serve ∈ ℕ ∧ next ∈ ℕ ∧
serve ≤ next
INITIALISATION 
state, sales, customer, serve, next := stopped, 30, 1, 0, 0
OPERATIONS
M_state =
PRE state = stopped 
THEN state :=running
END;
bp<--buy_product =
PRE customer=1
THEN bp,sales:=30,30
END;
gp<--give_product =
PRE serve ≤ next
THEN gp,next:=next,next+1
END
END

