import MainScreenAppBar from '@/app/components/modules/main/components/MainScreenAppBar';
import i18n from '@/i18n';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenAppBar', () => {
  it('renders correctly', () => {
    const { unmount } = render(<MainScreenAppBar setHeight={() => {}} />);

    expect(screen.getByRole('presentation')).toBeInTheDocument();

    const githubButton = screen.getByText('GitHub');
    expect(githubButton).toBeInTheDocument();
    expect(githubButton).toHaveAttribute(
      'href',
      'https://github.com/antonkoetzler'
    );

    expect(screen.getByRole('heading')).toBeInTheDocument();

    const resumeButton = screen.getByText('Résumé');
    expect(resumeButton).toBeInTheDocument();
    expect(resumeButton).toHaveAttribute('href', i18n.t('resumeLink'));

    unmount();
  });

  it('displays all width-specific names', () => {
    function expectName(width: number, name: string) {
      global.innerWidth = width;
      const { unmount } = render(<MainScreenAppBar setHeight={() => {}} />);
      expect(screen.getByText(name)).toBeInTheDocument();
      unmount();
    }
    expectName(675, 'Anton Louis Koetzler-Faust');
    expectName(575, 'Anton Koetzler-Faust');
    expectName(375, 'Anton K-F');
    expectName(374, 'AKF');
  });
});
