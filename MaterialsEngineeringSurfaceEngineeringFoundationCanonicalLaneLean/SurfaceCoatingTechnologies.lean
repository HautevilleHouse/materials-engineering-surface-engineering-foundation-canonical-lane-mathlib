import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean

structure SurfaceCoatingTechnologiesPackage where
  thermalSpray : Prop
  physicalVaporDeposition : Prop
  chemicalVaporDeposition : Prop
  electroplating : Prop
  anodizing : Prop

structure SurfaceCoatingTechnologiesEvidence (S : SurfaceCoatingTechnologiesPackage) where
  thermalSprayClosed : S.thermalSpray
  physicalVaporDepositionClosed : S.physicalVaporDeposition
  chemicalVaporDepositionClosed : S.chemicalVaporDeposition
  electroplatingClosed : S.electroplating
  anodizingClosed : S.anodizing

def SurfaceCoatingTechnologiesClosed (S : SurfaceCoatingTechnologiesPackage) : Prop :=
  S.thermalSpray ∧ S.physicalVaporDeposition ∧ S.chemicalVaporDeposition ∧ S.electroplating ∧ S.anodizing

theorem surface_coating_technologies_closed_from_evidence (S : SurfaceCoatingTechnologiesPackage) (E : SurfaceCoatingTechnologiesEvidence S) :
    SurfaceCoatingTechnologiesClosed S := by
  exact And.intro E.thermalSprayClosed
    (And.intro E.physicalVaporDepositionClosed
      (And.intro E.chemicalVaporDepositionClosed
        (And.intro E.electroplatingClosed E.anodizingClosed)))

end MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
