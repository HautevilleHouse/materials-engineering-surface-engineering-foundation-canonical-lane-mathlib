import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean

structure HardnessTestPackage where
  indentorType : Type u
  loadApplied : Type v
  indentationDepth : Prop
  hardnessValue : Prop
  scaleUsed : Prop
  indentorTypeDefined : indentorType
  loadAppliedDefined : loadApplied
  indentationDepthTerm : indentationDepth
  hardnessValueTerm : hardnessValue
  scaleUsedTerm : scaleUsed

structure HardnessTestEvidence (H : HardnessTestPackage) where
  indentorTypeClosed : H.indentorType
  loadAppliedClosed : H.loadApplied
  indentationDepthClosed : H.indentationDepth
  hardnessValueClosed : H.hardnessValue
  scaleUsedClosed : H.scaleUsed

def HardnessTestClosed (H : HardnessTestPackage) : Prop :=
  H.indentorType ∧ H.loadApplied ∧ H.indentationDepth ∧ H.hardnessValue ∧ H.scaleUsed

theorem hardness_test_closed_from_evidence (H : HardnessTestPackage) (E : HardnessTestEvidence H) : HardnessTestClosed H := by
  exact And.intro E.indentorTypeClosed (And.intro E.loadAppliedClosed (And.intro E.indentationDepthClosed (And.intro E.hardnessValueClosed E.scaleUsedClosed)))

end MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean
end HautevilleHouse