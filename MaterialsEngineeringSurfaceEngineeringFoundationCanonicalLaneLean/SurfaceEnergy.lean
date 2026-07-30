import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean

structure SurfaceEnergyPackage where
  surfaceTension : Type u
  surfaceReconstruction : Prop
  adsorptionIsotherm : Prop
  wettingAngle : Prop
  gibbsAdsorption : Prop
  surfaceDiffusion : Prop

structure SurfaceEnergyEvidence (S : SurfaceEnergyPackage) where
  surfaceReconstructionClosed : S.surfaceReconstruction
  adsorptionIsothermClosed : S.adsorptionIsotherm
  wettingAngleClosed : S.wettingAngle
  gibbsAdsorptionClosed : S.gibbsAdsorption
  surfaceDiffusionClosed : S.surfaceDiffusion

def SurfaceEnergyClosed (S : SurfaceEnergyPackage) : Prop :=
  S.surfaceReconstruction ∧ S.adsorptionIsotherm ∧ S.wettingAngle ∧ S.gibbsAdsorption ∧ S.surfaceDiffusion

theorem surface_energy_closed_from_evidence (S : SurfaceEnergyPackage) (E : SurfaceEnergyEvidence S) : SurfaceEnergyClosed S := by
  exact And.intro E.surfaceReconstructionClosed (And.intro E.adsorptionIsothermClosed (And.intro E.wettingAngleClosed (And.intro E.gibbsAdsorptionClosed E.surfaceDiffusionClosed)))

end MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean
end HautevilleHouse