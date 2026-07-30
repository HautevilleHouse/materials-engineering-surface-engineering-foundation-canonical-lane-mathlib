import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean

structure SurfaceEngineeringPackage where
  surfaceEnergy : Type u
  adhesionWork : Prop
  coatingThickness : Prop
  diffusionBarrier : Prop
  tribologicalBehavior : Prop
  corrosionResistance : Prop

structure SurfaceEngineeringEvidence (S : SurfaceEngineeringPackage) where
  adhesionWorkClosed : S.adhesionWork
  coatingThicknessClosed : S.coatingThickness
  diffusionBarrierClosed : S.diffusionBarrier
  tribologicalBehaviorClosed : S.tribologicalBehavior
  corrosionResistanceClosed : S.corrosionResistance

def SurfaceEngineeringClosed (S : SurfaceEngineeringPackage) : Prop :=
  S.adhesionWork ∧ S.coatingThickness ∧ S.diffusionBarrier ∧ S.tribologicalBehavior ∧ S.corrosionResistance

theorem surface_engineering_closed_from_evidence (S : SurfaceEngineeringPackage)
    (Ev : SurfaceEngineeringEvidence S) : SurfaceEngineeringClosed S := by
  exact And.intro Ev.adhesionWorkClosed
    (And.intro Ev.coatingThicknessClosed
      (And.intro Ev.diffusionBarrierClosed
        (And.intro Ev.tribologicalBehaviorClosed Ev.corrosionResistanceClosed)))

end MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean
end HautevilleHouse