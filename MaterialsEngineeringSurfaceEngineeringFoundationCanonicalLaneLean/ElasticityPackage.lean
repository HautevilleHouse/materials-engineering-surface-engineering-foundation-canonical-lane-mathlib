import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  youngsModulus : Prop
  poissonRatio : Prop
  shearModulus : Prop
  hookesLaw : Prop
  elasticDeformation : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  youngsModulusClosed : E.youngsModulus
  poissonRatioClosed : E.poissonRatio
  shearModulusClosed : E.shearModulus
  hookesLawClosed : E.hookesLaw
  elasticDeformationClosed : E.elasticDeformation

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.youngsModulus ∧ E.poissonRatio ∧ E.shearModulus ∧ E.hookesLaw ∧ E.elasticDeformation

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.youngsModulusClosed
    (And.intro Ev.poissonRatioClosed
      (And.intro Ev.shearModulusClosed
        (And.intro Ev.hookesLawClosed Ev.elasticDeformationClosed)))

end MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean
end HautevilleHouse