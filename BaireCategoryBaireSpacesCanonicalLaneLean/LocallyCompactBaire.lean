import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BaireCategoryBaireSpacesCanonicalLaneLean.BaireSpaceDefinition

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesCanonicalLaneLean

structure LocallyCompactPackage (P : BaireSpacePackage) where
  locallyCompact : LocallyCompactSpace P.carrier
  hausdorff : T2Space P.carrier
  baireTheoremHolds : Prop
  proofLocallyCompact : baireTheoremHolds

structure LocallyCompactEvidence {P : BaireSpacePackage} (L : LocallyCompactPackage P) where
  baireTheoremHoldsClosed : L.baireTheoremHolds
  locallyCompactClosed : L.locallyCompact

def LocallyCompactClosed {P : BaireSpacePackage} (L : LocallyCompactPackage P) : Prop :=
  L.baireTheoremHolds ∧ L.locallyCompact

theorem locally_compact_closed_from_evidence {P : BaireSpacePackage} (L : LocallyCompactPackage P)
    (E : LocallyCompactEvidence L) : LocallyCompactClosed L := by
  exact And.intro E.baireTheoremHoldsClosed E.locallyCompactClosed

end BaireCategoryBaireSpacesCanonicalLaneLean
end HautevilleHouse
