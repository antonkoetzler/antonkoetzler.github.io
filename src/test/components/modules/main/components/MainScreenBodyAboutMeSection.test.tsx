import MainScreenBodyAboutMeSection from '@/app/components/modules/main/components/MainScreenBodyAboutMeSection';
import i18n from '@/i18n';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBodyAboutMeSection', () => {
  it('renders correctly', () => {
    render(<MainScreenBodyAboutMeSection />);
    expect(screen.getByText(`- ${i18n.t('aboutMeFact1')}`));
    expect(screen.getByText(`- ${i18n.t('aboutMeFact2')}`));
    expect(screen.getByText(`- ${i18n.t('aboutMeFact3')}`));
    expect(screen.getByText(`- ${i18n.t('aboutMeFact4')}`));
    expect(screen.getByText(`- ${i18n.t('aboutMeFact5')}`));
    expect(screen.getByText(`- ${i18n.t('aboutMeFact6')}`));
  });
});
