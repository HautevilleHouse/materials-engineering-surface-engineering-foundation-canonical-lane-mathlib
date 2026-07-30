import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean

structure CrystalStructurePackage where
  bravaisLattice : Type u
  basisVectors : Type v
  unitCell : Prop
  atomicPositions : Prop
  symmetryGroup : Prop
  millerIndices : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  unitCellClosed : C.unitCell
  atomicPositionsClosed : C.atomicPositions
  symmetryGroupClosed : C.symmetryGroup
  millerIndicesClosed : C.millerIndices

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.unitCell ∧ C.atomicPositions ∧ C.symmetryGroup ∧ C.millerIndices

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage) (E : CrystalStructureEvidence C) : CrystalStructureClosed C := by
  exact And.intro E.unitCellClosed (And.intro E.atomicPositionsClosed (And.intro E.symmetryGroupClosed E.millerIndicesClosed))

end MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean
end HautevilleHouse