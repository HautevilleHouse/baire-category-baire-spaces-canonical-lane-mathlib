import BaireCategoryBaireSpacesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BaireCategoryBaireSpacesCanonicalLaneLean
end HautevilleHouse