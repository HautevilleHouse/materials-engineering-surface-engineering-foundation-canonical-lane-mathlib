import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Type u
  fractureToughness : Prop
  crackPropagation : Prop
  parisLaw : Prop
  fatigueLife : Prop
  griffithCriterion : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  fractureToughnessClosed : F.fractureToughness
  crackPropagationClosed : F.crackPropagation
  parisLawClosed : F.parisLaw
  fatigueLifeClosed : F.fatigueLife
  griffithCriterionClosed : F.griffithCriterion

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.fractureToughness ∧ F.crackPropagation ∧ F.parisLaw ∧ F.fatigueLife ∧ F.griffithCriterion

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage)
    (Ev : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro Ev.fractureToughnessClosed
    (And.intro Ev.crackPropagationClosed
      (And.intro Ev.parisLawClosed
        (And.intro Ev.fatigueLifeClosed Ev.griffithCriterionClosed)))

end MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean
end HautevilleHouse