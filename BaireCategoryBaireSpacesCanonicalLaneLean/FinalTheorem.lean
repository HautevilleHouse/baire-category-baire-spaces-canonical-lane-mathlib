import HautevilleHouse.BaireCategoryBaireSpacesCanonicalLaneLean.BaireCategoryPackage

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesCanonicalLaneLean

def ConstrainedBaireClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_baire_endgame (A : AdmissibleClass) : ConstrainedBaireClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BaireCategoryBaireSpacesCanonicalLaneLean
end HautevilleHouse