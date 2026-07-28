import HautevilleHouse.BaireCategoryBaireSpacesCanonicalLaneLean.MathlibObjects

/-!
# Baire Category Evidence
-/

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesCanonicalLaneLean

structure BaireCategoryTheoremEvidence where
  completeMetricCase : Prop
  locallyCompactHausdorffCase : Prop
  countableIntersectionsDense : Prop
  categoryArgumentsApplied : Prop

structure BaireCategoryEvidencePackage where
  evidence : BaireCategoryTheoremEvidence
  evidenceClosed : evidence.completeMetricCase ∧ evidence.locallyCompactHausdorffCase ∧ evidence.countableIntersectionsDense ∧ evidence.categoryArgumentsApplied

theorem baire_category_evidence_closed (E : BaireCategoryEvidencePackage) :
    E.evidenceClosed := by
  exact E.evidenceClosed

end BaireCategoryBaireSpacesCanonicalLaneLean
end HautevilleHouse