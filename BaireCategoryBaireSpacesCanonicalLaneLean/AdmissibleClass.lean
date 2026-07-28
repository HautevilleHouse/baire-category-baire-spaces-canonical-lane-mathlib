import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesCanonicalLaneLean

structure BaireSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  completeMetric : Prop
  baireProperty : Prop

structure BaireAdmittedObject where
  space : BaireSpace
  bairePropertyHolds : space.baireProperty
  conclusion : bairePropertyHolds

def BaireWitnessClosed (O : BaireAdmittedObject) : Prop :=
  O.bairePropertyHolds

structure AdmissibleClass where
  object : BaireAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BaireWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BaireCategoryBaireSpacesCanonicalLaneLean
end HautevilleHouse