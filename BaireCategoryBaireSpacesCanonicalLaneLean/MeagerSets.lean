import HautevilleHouse.BaireCategoryBaireSpacesCanonicalLaneLean.CompleteMetricSpace

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesCanonicalLaneLean

structure MeagerSetsPackage (P : CompleteMetricSpacePackage) where
  meagerDefined : Prop
  residualDefined : Prop
  countableUnionOfClosedNowhereDense : Prop
  complementOfMeagerIsResidual : Prop
  meagerDefinedClosed : meagerDefined
  residualDefinedClosed : residualDefined
  countableUnionOfClosedNowhereDenseClosed : countableUnionOfClosedNowhereDense
  complementOfMeagerIsResidualClosed : complementOfMeagerIsResidual

structure MeagerSetsEvidence {P : CompleteMetricSpacePackage} (M : MeagerSetsPackage P) where
  meagerDefinedClosed : M.meagerDefined
  residualDefinedClosed : M.residualDefined
  countableUnionOfClosedNowhereDenseClosed : M.countableUnionOfClosedNowhereDense
  complementOfMeagerIsResidualClosed : M.complementOfMeagerIsResidual

def MeagerSetsClosed {P : CompleteMetricSpacePackage} (M : MeagerSetsPackage P) : Prop :=
  M.meagerDefined ∧ M.residualDefined ∧ M.countableUnionOfClosedNowhereDense ∧ M.complementOfMeagerIsResidual

theorem meager_sets_closed_from_evidence
    {P : CompleteMetricSpacePackage} (M : MeagerSetsPackage P) (E : MeagerSetsEvidence M) :
    MeagerSetsClosed M := by
  exact And.intro E.meagerDefinedClosed
    (And.intro E.residualDefinedClosed
      (And.intro E.countableUnionOfClosedNowhereDenseClosed
        E.complementOfMeagerIsResidualClosed))

end BaireCategoryBaireSpacesCanonicalLaneLean
end HautevilleHouse