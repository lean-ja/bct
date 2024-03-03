import Mathlib.Tactic
/- # 1.1 Categories -/

namespace bct

universe u v

class Category (C : Type u) where
  /-- for each `A, B ∈ C`, a collection `Hom A B` of maps or morphisms -/
  Hom : C → C → Type v

  /-- for each `A, B, C ∈ C`, there is a function colled composition -/
  comp : ∀ {a b c : C}, Hom a b → Hom b c → Hom a c

  /-- identity -/
  id : ∀ (a : C), Hom a a

  /-- identity law -/
  id_comp : ∀ {a b : C} (f : Hom a b), comp (id a) f = f := by aesop

  /-- identity law -/
  comp_id : ∀ {a b : C} (f : Hom a b), comp f (id b) = f := by aesop

  /-- associativity -/
  assoc : ∀ {a b c d : C} (f : Hom a b) (g : Hom b c) (h : Hom c d),
    comp (comp f g) h = comp f (comp g h) := by aesop

end bct
