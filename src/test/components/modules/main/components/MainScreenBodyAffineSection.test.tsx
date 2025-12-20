import MainScreenBodyAffineSection from '@/app/components/modules/main/components/MainScreenBodyAffineSection';
import i18n from '@/i18n';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBodyAffineSection', () => {
  it('renders correctly', () => {
    render(<MainScreenBodyAffineSection />);
    expect(screen.getByText(i18n.t('affineTitle'))).toBeInTheDocument();
    expect(
      screen.getByText(i18n.t('antonsFlutterBibleAffinePage'))
    ).toBeInTheDocument();
    expect(screen.getByText(i18n.t('myoroAffinePage'))).toBeInTheDocument();
    expect(screen.getByText(i18n.t('2xkoAffinePage'))).toBeInTheDocument();
  });
});
