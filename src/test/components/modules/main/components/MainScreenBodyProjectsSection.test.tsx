import MainScreenBodyProjectsSection from '@/app/components/modules/main/components/MainScreenBodyProjectsSection';
import i18n from '@/i18n';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBodyProjectsSection', () => {
  it('renders correctly', () => {
    render(<MainScreenBodyProjectsSection />);
    expect(screen.getByText(i18n.t('projectsTitle'))).toBeInTheDocument();

    expect(screen.getByText('Myoro Flutter Library')).toBeInTheDocument();
    expect(screen.getByText(`- ${i18n.t('projectsMyoroFlutterLibraryFact1')}`)).toBeInTheDocument();
    expect(screen.getByText(`- ${i18n.t('projectsMyoroFlutterLibraryFact2')}`)).toBeInTheDocument();
    expect(screen.getByText(`- ${i18n.t('projectsMyoroFlutterLibraryFact3')}`)).toBeInTheDocument();
    expect(screen.getByText(`- ${i18n.t('projectsMyoroFlutterLibraryFact4')}`)).toBeInTheDocument();

    expect(screen.getByText(i18n.t('projectsPortfolioTitle'))).toBeInTheDocument();
    expect(screen.getByText(`- ${i18n.t('projectsPortfolioFact1')}`)).toBeInTheDocument();
    expect(screen.getByText(`- ${i18n.t('projectsPortfolioFact2')}`)).toBeInTheDocument();
    expect(screen.getByText(`- ${i18n.t('projectsPortfolioFact3')}`)).toBeInTheDocument();
  });
});