import HautevilleHouse.BaireCategoryBaireSpacesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesCanonicalLaneLean

structure BaireCategoryPackage (A : AdmissibleClass) where
  denseOpenIntersection : Prop
  bairePropertyDerived : Prop
  denseOpenIntersectionClosed : denseOpenIntersection
  bairePropertyDerivedClosed : bairePropertyDerived

structure BaireCategoryEvidence (A : AdmissibleClass) (P : BaireCategoryPackage A) where
  denseOpenIntersectionClosed : P.denseOpenIntersection
  bairePropertyDerivedClosed : P.bairePropertyDerived

def BaireCategoryClosed (A : AdmissibleClass) (P : BaireCategoryPackage A) : Prop :=
  P.denseOpenIntersection ∧ P.bairePropertyDerived

theorem baire_category_closed_from_evidence (A : AdmissibleClass) (P : BaireCategoryPackage A)
    (E : BaireCategoryEvidence A P) : BaireCategoryClosed A P := by
  exact And.intro E.denseOpenIntersectionClosed E.bairePropertyDerivedClosed

end BaireCategoryBaireSpacesCanonicalLaneLean
end HautevilleHouse