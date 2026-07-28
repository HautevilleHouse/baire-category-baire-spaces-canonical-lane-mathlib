import HautevilleHouse.BaireCategoryBaireSpacesCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BaireSpace where
  carrier : Type u
  topology : TopologicalSpace carrier

structure BaireSpaceAdmittedObject where
  space : BaireSpace
  isBaireSpace : Prop
  conclusion : isBaireSpace

structure BaireEndgameState where
  object : BaireSpaceAdmittedObject

def BaireWitnessClosed (O : BaireSpaceAdmittedObject) : Prop :=
  O.isBaireSpace

end BaireCategoryBaireSpacesCanonicalLaneLean
end HautevilleHouse