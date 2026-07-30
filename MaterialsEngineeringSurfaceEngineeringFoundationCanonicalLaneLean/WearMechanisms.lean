import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean

structure WearMechanismsPackage where
  abrasiveWear : Prop
  adhesiveWear : Prop
  fatigueWear : Prop
  erosiveWear : Prop
  frettingWear : Prop

structure WearMechanismsEvidence (W : WearMechanismsPackage) where
  abrasiveWearClosed : W.abrasiveWear
  adhesiveWearClosed : W.adhesiveWear
  fatigueWearClosed : W.fatigueWear
  erosiveWearClosed : W.erosiveWear
  frettingWearClosed : W.frettingWear

def WearMechanismsClosed (W : WearMechanismsPackage) : Prop :=
  W.abrasiveWear ∧ W.adhesiveWear ∧ W.fatigueWear ∧ W.erosiveWear ∧ W.frettingWear

theorem wear_mechanisms_closed_from_evidence (W : WearMechanismsPackage) (E : WearMechanismsEvidence W) :
    WearMechanismsClosed W := by
  exact And.intro E.abrasiveWearClosed
    (And.intro E.adhesiveWearClosed
      (And.intro E.fatigueWearClosed
        (And.intro E.erosiveWearClosed E.frettingWearClosed)))

end MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
