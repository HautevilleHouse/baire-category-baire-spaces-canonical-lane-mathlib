import HautevilleHouse.BaireCategoryBaireSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesCanonicalLaneLean

structure CompleteMetricSpacePackage where
  carrier : Type u
  metric : carrier → carrier → ℝ
  metricSpaceAxioms : Prop
  completeAxiom : Prop
  metricSpaceAxiomsClosed : metricSpaceAxioms
  completeAxiomClosed : completeAxiom

structure CompleteMetricSpaceEvidence (P : CompleteMetricSpacePackage) where
  metricSpaceAxiomsClosed : P.metricSpaceAxioms
  completeAxiomClosed : P.completeAxiom

def CompleteMetricSpaceClosed (P : CompleteMetricSpacePackage) : Prop :=
  P.metricSpaceAxioms ∧ P.completeAxiom

theorem complete_metric_space_closed_from_evidence
    (P : CompleteMetricSpacePackage) (E : CompleteMetricSpaceEvidence P) :
    CompleteMetricSpaceClosed P := by
  exact And.intro E.metricSpaceAxiomsClosed E.completeAxiomClosed

end BaireCategoryBaireSpacesCanonicalLaneLean
end HautevilleHouse