signature hhsMinimize =
sig

include Abbrev

  datatype Proof = 
    Tactic of (string * goal)
  | Then   of (Proof * Proof)
  | Thenl  of (Proof * Proof list)

  val hhs_minimize_flag : bool ref
  val pretty_stac : string -> goal -> goal list -> string
  val minimize : Proof -> Proof  
  val reconstruct : goal -> Proof -> string

end