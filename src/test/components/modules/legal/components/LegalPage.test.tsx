import LegalPage from '@/app/components/modules/legal/components/LegalPage';
import i18n from '@/i18n';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('LegalPage', () => {
  it('renders correctly', () => {
    render(<LegalPage />);

    expect(screen.getByRole('main')).toBeInTheDocument();
    expect(screen.getByText(i18n.t('legalTitle'))).toBeInTheDocument();
    expect(
      screen.getByText(i18n.t('legalPrivacyPolicyTitle'))
    ).toBeInTheDocument();
    expect(
      screen.getByText(i18n.t('legalDataCollectionTitle'))
    ).toBeInTheDocument();
    expect(screen.getByText(i18n.t('legalDataUsageTitle'))).toBeInTheDocument();
    expect(
      screen.getByText(i18n.t('legalDataSharingTitle'))
    ).toBeInTheDocument();
    expect(
      screen.getByText(i18n.t('legalUserRightsTitle'))
    ).toBeInTheDocument();
    expect(screen.getByText(i18n.t('legalContactTitle'))).toBeInTheDocument();
    expect(screen.getByText(i18n.t('legalChangesTitle'))).toBeInTheDocument();
    expect(screen.getByText(i18n.t('legalTermsTitle'))).toBeInTheDocument();
    expect(
      screen.getByText(i18n.t('legalAcceptanceTitle'))
    ).toBeInTheDocument();
    expect(
      screen.getByText(i18n.t('legalUseRestrictionsTitle'))
    ).toBeInTheDocument();
    expect(
      screen.getByText(i18n.t('legalDisclaimerTitle'))
    ).toBeInTheDocument();
    expect(
      screen.getByText(i18n.t('legalLimitationTitle'))
    ).toBeInTheDocument();
    expect(
      screen.getByText(i18n.t('legalGoverningLawTitle'))
    ).toBeInTheDocument();
  });
});
