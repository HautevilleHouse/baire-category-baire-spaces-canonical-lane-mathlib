import BaireCategoryBaireSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesCanonicalLaneLean

structure BaireSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  baireProperty : Prop

def isBaire (X : BaireSpace) : Prop :=
  ∀ (U : ℕ → Set X.carrier), (∀ n, IsOpen (U n) ∧ Dense (U n)) → Dense (⋂ n, U n)

structure BaireAdmittedObject where
  space : BaireSpace
  spaceIsBaire : isBaire space
  conclusion : spaceIsBaire

def BaireWitnessClosed (O : BaireAdmittedObject) : Prop :=
  O.spaceIsBaire

end BaireCategoryBaireSpacesCanonicalLaneLean
end HautevilleHouse