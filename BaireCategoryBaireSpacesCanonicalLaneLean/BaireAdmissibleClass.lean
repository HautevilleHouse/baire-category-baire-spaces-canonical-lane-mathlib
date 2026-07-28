import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BaireCategoryBaireSpacesCanonicalLaneLean.BaireSpaceDefinition

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesCanonicalLaneLean

structure BaireAdmissibleClass where
  object : BaireSpacePackage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end BaireCategoryBaireSpacesCanonicalLaneLean
end HautevilleHouse
