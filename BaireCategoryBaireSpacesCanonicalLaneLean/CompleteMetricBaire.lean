import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BaireCategoryBaireSpacesCanonicalLaneLean.BaireSpaceDefinition

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesCanonicalLaneLean

structure CompleteMetricPackage (P : BaireSpacePackage) where
  metric : MetricSpace P.carrier
  complete : CompleteSpace P.carrier
  baireTheoremHolds : Prop
  proofComplete : baireTheoremHolds

structure CompleteMetricEvidence {P : BaireSpacePackage} (C : CompleteMetricPackage P) where
  baireTheoremHoldsClosed : C.baireTheoremHolds
  completeSpaceClosed : C.complete

def CompleteMetricClosed {P : BaireSpacePackage} (C : CompleteMetricPackage P) : Prop :=
  C.baireTheoremHolds ∧ C.complete

theorem complete_metric_closed_from_evidence {P : BaireSpacePackage} (C : CompleteMetricPackage P)
    (E : CompleteMetricEvidence C) : CompleteMetricClosed C := by
  exact And.intro E.baireTheoremHoldsClosed E.completeSpaceClosed

end BaireCategoryBaireSpacesCanonicalLaneLean
end HautevilleHouse
