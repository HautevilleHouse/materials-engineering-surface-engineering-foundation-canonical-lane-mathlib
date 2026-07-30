import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  components : Nat
  phases : Type u
  gibbsFreeEnergy : Type v
  phaseBoundaries : Prop
  eutecticPoint : Prop
  peritecticPoint : Prop
  solidSolubility : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  eutecticPointClosed : P.eutecticPoint
  peritecticPointClosed : P.peritecticPoint
  solidSolubilityClosed : P.solidSolubility

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.eutecticPoint ∧ P.peritecticPoint ∧ P.solidSolubility

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed
    (And.intro E.eutecticPointClosed
      (And.intro E.peritecticPointClosed E.solidSolubilityClosed))

end MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean
end HautevilleHouse