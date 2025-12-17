import MainScreenBodySection from '@/app/components/modules/main/components/MainScreenBodySection';
import { useTranslation } from 'react-i18next';
import { ReactNode } from 'react';

function LegalPage() {
  const { t } = useTranslation();

  return (
    <div
      role={'main'}
      className={'flex w-full flex-col items-center overflow-y-auto p-4'}
    >
      <div
        className={'flex flex-col items-center gap-5'}
        style={{ maxWidth: '800px' }}
      >
        <MainScreenBodySection title={t('legalTitle')}>
          <div className="flex w-full flex-col gap-4 text-left">
            <Section title={t('legalPrivacyPolicyTitle')}>
              <Paragraph>{t('legalPrivacyPolicyContent')}</Paragraph>
            </Section>
            <Section title={t('legalDataCollectionTitle')}>
              <Paragraph>{t('legalDataCollectionContent')}</Paragraph>
            </Section>
            <Section title={t('legalDataUsageTitle')}>
              <Paragraph>{t('legalDataUsageContent')}</Paragraph>
            </Section>
            <Section title={t('legalDataSharingTitle')}>
              <Paragraph>{t('legalDataSharingContent')}</Paragraph>
            </Section>
            <Section title={t('legalUserRightsTitle')}>
              <Paragraph>{t('legalUserRightsContent')}</Paragraph>
            </Section>
            <Section title={t('legalContactTitle')}>
              <Paragraph>{t('legalContactContent')}</Paragraph>
            </Section>
            <Section title={t('legalChangesTitle')}>
              <Paragraph>{t('legalChangesContent')}</Paragraph>
            </Section>
          </div>
        </MainScreenBodySection>
        <MainScreenBodySection title={t('legalTermsTitle')}>
          <div className="flex w-full flex-col gap-4 text-left">
            <Section title={t('legalAcceptanceTitle')}>
              <Paragraph>{t('legalAcceptanceContent')}</Paragraph>
            </Section>
            <Section title={t('legalUseRestrictionsTitle')}>
              <Paragraph>{t('legalUseRestrictionsContent')}</Paragraph>
            </Section>
            <Section title={t('legalDisclaimerTitle')}>
              <Paragraph>{t('legalDisclaimerContent')}</Paragraph>
            </Section>
            <Section title={t('legalLimitationTitle')}>
              <Paragraph>{t('legalLimitationContent')}</Paragraph>
            </Section>
            <Section title={t('legalGoverningLawTitle')}>
              <Paragraph>{t('legalGoverningLawContent')}</Paragraph>
            </Section>
          </div>
        </MainScreenBodySection>
      </div>
    </div>
  );
}

function Section({ title, children }: { title: string; children: ReactNode }) {
  return (
    <div className="flex flex-col gap-2">
      <p className="text-lg font-semibold">{title}</p>
      {children}
    </div>
  );
}

function Paragraph({ children }: { children: ReactNode }) {
  return <p className="text-sm leading-relaxed">{children}</p>;
}

export default LegalPage;
