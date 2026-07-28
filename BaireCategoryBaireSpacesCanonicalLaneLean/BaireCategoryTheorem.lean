import HautevilleHouse.BaireCategoryBaireSpacesCanonicalLaneLean.MeagerSets

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesCanonicalLaneLean

structure BaireCategoryTheoremPackage {P : CompleteMetricSpacePackage}
    (M : MeagerSetsPackage P) where
  completeImpliesBaire : Prop
  countableIntersectionOfOpenDenseIsDense : Prop
  residualSetsAreDense : Prop
  completeImpliesBaireClosed : completeImpliesBaire
  countableIntersectionOfOpenDenseIsDenseClosed : countableIntersectionOfOpenDenseIsDense
  residualSetsAreDenseClosed : residualSetsAreDense

structure BaireCategoryTheoremEvidence {P : CompleteMetricSpacePackage}
    {M : MeagerSetsPackage P} (B : BaireCategoryTheoremPackage M) where
  completeImpliesBaireClosed : B.completeImpliesBaire
  countableIntersectionOfOpenDenseIsDenseClosed : B.countableIntersectionOfOpenDenseIsDense
  residualSetsAreDenseClosed : B.residualSetsAreDense

def BaireCategoryTheoremClosed {P : CompleteMetricSpacePackage}
    {M : MeagerSetsPackage P} (B : BaireCategoryTheoremPackage M) : Prop :=
  B.completeImpliesBaire ∧ B.countableIntersectionOfOpenDenseIsDense ∧ B.residualSetsAreDense

theorem baire_category_theorem_closed_from_evidence
    {P : CompleteMetricSpacePackage} {M : MeagerSetsPackage P}
    (B : BaireCategoryTheoremPackage M) (E : BaireCategoryTheoremEvidence B) :
    BaireCategoryTheoremClosed B := by
  exact And.intro E.completeImpliesBaireClosed
    (And.intro E.countableIntersectionOfOpenDenseIsDenseClosed
      E.residualSetsAreDenseClosed)

end BaireCategoryBaireSpacesCanonicalLaneLean
end HautevilleHouse