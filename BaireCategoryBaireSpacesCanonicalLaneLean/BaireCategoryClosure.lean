import HautevilleHouse.BaireCategoryBaireSpacesCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.BaireCategoryBaireSpacesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesCanonicalLaneLean

def ConstrainedBaireCategoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_baire_category_endgame (A : AdmissibleClass) :
    ConstrainedBaireCategoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BaireCategoryBaireSpacesCanonicalLaneLean
end HautevilleHouse