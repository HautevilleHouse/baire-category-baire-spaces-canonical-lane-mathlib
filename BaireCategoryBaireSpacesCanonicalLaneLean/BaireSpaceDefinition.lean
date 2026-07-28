import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesCanonicalLaneLean

structure BaireSpacePackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  baireProperty : Prop
  meagerSets : Set (Set carrier)
  meagerCountableUnion : ∀ (S : Set (Set carrier)), S ⊆ meagerSets → Set.Countable S → ⋃₀ S ∈ meagerSets
  meagerSubsetClosure : ∀ (A : Set carrier), A ∈ meagerSets → closure A = ∅

structure BaireSpaceEvidence (P : BaireSpacePackage) where
  bairePropertyClosed : P.baireProperty
  meagerCountableUnionClosed : P.meagerCountableUnion
  meagerSubsetClosureClosed : P.meagerSubsetClosure

def BaireSpaceClosed (P : BaireSpacePackage) : Prop :=
  P.baireProperty ∧ P.meagerCountableUnion ∧ P.meagerSubsetClosure

theorem baire_space_closed_from_evidence (P : BaireSpacePackage) (E : BaireSpaceEvidence P) :
    BaireSpaceClosed P := by
  exact And.intro E.bairePropertyClosed
    (And.intro E.meagerCountableUnionClosed E.meagerSubsetClosureClosed)

end BaireCategoryBaireSpacesCanonicalLaneLean
end HautevilleHouse
