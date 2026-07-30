import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean

structure ElasticityPackage where
  youngModulus : Float
  poissonRatio : Float
  shearModulus : Float
  bulkModulus : Float
  stressStrainRelation : String
  elasticityClosed : Prop

define ElasticityEvidence (E : ElasticityPackage) where
  youngModulusClosed : E.youngModulus = 200.0e9
  poissonRatioClosed : E.poissonRatio = 0.3
  shearModulusClosed : E.shearModulus = 77.0e9
  bulkModulusClosed : E.bulkModulus = 167.0e9
  stressStrainRelationClosed : E.stressStrainRelation = "Hooke's law"
  elasticityClosedTerm : E.elasticityClosed

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.youngModulus = 200.0e9 ∧ E.poissonRatio = 0.3 ∧ E.shearModulus = 77.0e9 ∧ E.bulkModulus = 167.0e9 ∧ E.stressStrainRelation = "Hooke's law" ∧ E.elasticityClosed

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.youngModulusClosed (And.intro Ev.poissonRatioClosed (And.intro Ev.shearModulusClosed (And.intro Ev.bulkModulusClosed (And.intro Ev.stressStrainRelationClosed Ev.elasticityClosedTerm))))

end MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean
end HautevilleHouse