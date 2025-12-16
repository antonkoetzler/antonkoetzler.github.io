import MainScreenAppBar from '@/app/components/modules/main/components/MainScreenAppBar';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenAppBar', () => {
  it('renders correctly', () => {
    const { unmount } = render(<MainScreenAppBar />);

    expect(screen.getByRole('presentation')).toBeInTheDocument();

    const githubButton = screen.getByText('GitHub');
    expect(githubButton).toBeInTheDocument();
    expect(githubButton).toHaveAttribute(
      'href',
      'https://github.com/antonkoetzler'
    );

    expect(screen.getByRole('heading')).toBeInTheDocument();

    const linkedInButton = screen.getByText('LinkedIn');
    expect(linkedInButton).toBeInTheDocument();
    expect(linkedInButton).toHaveAttribute(
      'href',
      'https://www.linkedin.com/in/anton-koetzler-faust-002025192/'
    );

    unmount();
  });

  it('displays all width-specific names', () => {
    function expectName(width: number, name: string) {
      global.innerWidth = width;
      const { unmount } = render(<MainScreenAppBar />);
      expect(screen.getByText(name)).toBeInTheDocument();
      unmount();
    }
    expectName(680, 'Anton Louis Koetzler-Faust');
    expectName(580, 'Anton Koetzler-Faust');
    expectName(380, 'Anton K-F');
    expectName(379, 'AKF');
  });
});
