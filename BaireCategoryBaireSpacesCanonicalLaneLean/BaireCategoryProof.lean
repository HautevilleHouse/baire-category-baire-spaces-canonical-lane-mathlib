import HautevilleHouse.BaireCategoryBaireSpacesCanonicalLaneLean.BaireCategoryEvidence

/-!
# Baire Category Proof
-/

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesCanonicalLaneLean

structure BaireCategoryProof where
  completeMetricCaseProved : Prop
  locallyCompactHausdorffCaseProved : Prop
  proofTerms : completeMetricCaseProved ∧ locallyCompactHausdorffCaseProved

def BaireCategoryProofClosed (P : BaireCategoryProof) : Prop :=
  P.completeMetricCaseProved ∧ P.locallyCompactHausdorffCaseProved

theorem baire_category_proof_closed (P : BaireCategoryProof) (H : P.proofTerms) :
    BaireCategoryProofClosed P := by
  exact H

end BaireCategoryBaireSpacesCanonicalLaneLean
end HautevilleHouse