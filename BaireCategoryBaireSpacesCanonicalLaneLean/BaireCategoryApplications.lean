import HautevilleHouse.BaireCategoryBaireSpacesCanonicalLaneLean.BaireSpaceDefinition

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesCanonicalLaneLean

structure UniformBoundednessPackage where
  banachSpace : Prop
  familyOfOperators : Prop
  pointwiseBounded : Prop
  uniformBounded : Prop
  implication : banachSpace → (familyOfOperators → pointwiseBounded → uniformBounded)

structure UniformBoundednessEvidence (P : UniformBoundednessPackage) where
  banachSpaceClosed : P.banachSpace
  familyOfOperatorsClosed : P.familyOfOperators
  pointwiseBoundedClosed : P.pointwiseBounded
  uniformBoundedClosed : P.uniformBounded
  implicationClosed : P.implication P.banachSpaceClosed P.familyOfOperatorsClosed P.pointwiseBoundedClosed → P.uniformBoundedClosed

def UniformBoundednessClosed (P : UniformBoundednessPackage) : Prop :=
  P.banachSpace ∧ P.familyOfOperators ∧ P.pointwiseBounded ∧ P.uniformBounded ∧
  (P.banachSpace → P.familyOfOperators → P.pointwiseBounded → P.uniformBounded)

theorem uniform_boundedness_closed_from_evidence
    (P : UniformBoundednessPackage) (E : UniformBoundednessEvidence P) :
    UniformBoundednessClosed P := by
  exact And.intro E.banachSpaceClosed
    (And.intro E.familyOfOperatorsClosed
      (And.intro E.pointwiseBoundedClosed
        (And.intro E.uniformBoundedClosed
          (fun h1 h2 h3 => E.implicationClosed (h1 h2 h3)))))

end BaireCategoryBaireSpacesCanonicalLaneLean
end HautevilleHouse