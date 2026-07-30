import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean

structure ElasticityTensorPackage where
  elasticStiffness : Type u
  elasticCompliance : Type v
  stressStrainRelation : Prop
  stiffnessSymmetry : Prop
  complianceSymmetry : Prop
  engineeringConstants : Prop

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  stressStrainRelationClosed : E.stressStrainRelation
  stiffnessSymmetryClosed : E.stiffnessSymmetry
  complianceSymmetryClosed : E.complianceSymmetry
  engineeringConstantsClosed : E.engineeringConstants

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.stressStrainRelation ∧ E.stiffnessSymmetry ∧ E.complianceSymmetry ∧ E.engineeringConstants

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage) (Ev : ElasticityTensorEvidence E) : ElasticityTensorClosed E := by
  exact And.intro Ev.stressStrainRelationClosed (And.intro Ev.stiffnessSymmetryClosed (And.intro Ev.complianceSymmetryClosed Ev.engineeringConstantsClosed))

end MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean
end HautevilleHouse