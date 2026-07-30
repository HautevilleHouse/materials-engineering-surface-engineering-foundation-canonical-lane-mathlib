import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  components : Nat
  phases : List String
  temperatureRange : Prop
  compositionRange : Prop
  phaseBoundaries : Prop
  componentsDefined : components = 2
  phasesDefined : phases = ["solid", "liquid"]
  temperatureRangeTerm : temperatureRange
  compositionRangeTerm : compositionRange
  phaseBoundariesTerm : phaseBoundaries

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  componentsClosed : P.components = 2
  phasesClosed : P.phases = ["solid", "liquid"]
  temperatureRangeClosed : P.temperatureRange
  compositionRangeClosed : P.compositionRange
  phaseBoundariesClosed : P.phaseBoundaries

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.components = 2 ∧ P.phases = ["solid", "liquid"] ∧ P.temperatureRange ∧ P.compositionRange ∧ P.phaseBoundaries

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.componentsClosed (And.intro E.phasesClosed (And.intro E.temperatureRangeClosed (And.intro E.compositionRangeClosed E.phaseBoundariesClosed)))

end MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean
end HautevilleHouse