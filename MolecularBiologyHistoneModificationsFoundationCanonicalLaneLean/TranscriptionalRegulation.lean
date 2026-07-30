import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean

structure TranscriptionalRegulationPackage where
  promoterAccessibility : Prop
  transcriptionFactorBinding : Prop
  rnaPolymeraseRecruitment : Prop
  elongationEfficiency : Prop
  terminationSignals : Prop

structure TranscriptionalRegulationEvidence (T : TranscriptionalRegulationPackage) where
  promoterAccessibilityClosed : T.promoterAccessibility
  transcriptionFactorBindingClosed : T.transcriptionFactorBinding
  rnaPolymeraseRecruitmentClosed : T.rnaPolymeraseRecruitment
  elongationEfficiencyClosed : T.elongationEfficiency
  terminationSignalsClosed : T.terminationSignals

def TranscriptionalRegulationClosed (T : TranscriptionalRegulationPackage) : Prop :=
  T.promoterAccessibility ∧ T.transcriptionFactorBinding ∧ T.rnaPolymeraseRecruitment ∧
  T.elongationEfficiency ∧ T.terminationSignals

theorem transcriptional_regulation_closed_from_evidence
    (T : TranscriptionalRegulationPackage) (E : TranscriptionalRegulationEvidence T) :
    TranscriptionalRegulationClosed T := by
  exact And.intro E.promoterAccessibilityClosed
    (And.intro E.transcriptionFactorBindingClosed
      (And.intro E.rnaPolymeraseRecruitmentClosed
        (And.intro E.elongationEfficiencyClosed E.terminationSignalsClosed)))

end MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean
end HautevilleHouse