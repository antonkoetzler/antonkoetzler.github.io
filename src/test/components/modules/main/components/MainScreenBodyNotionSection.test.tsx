import MainScreenBodyNotionSection from '@/app/components/modules/main/components/MainScreenBodyNotionSection';
import i18n from '@/i18n';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBodyNotionSection', () => {
  it('renders correctly', () => {
    render(<MainScreenBodyNotionSection />);
    expect(screen.getByText(i18n.t('notionTitle'))).toBeInTheDocument();
    expect(
      screen.getByText(i18n.t('antonsFlutterBibleNotionPage'))
    ).toBeInTheDocument();
    expect(screen.getByText(i18n.t('myoroNotionPage'))).toBeInTheDocument();
    expect(screen.getByText(i18n.t('2xkoNotionPage'))).toBeInTheDocument();
  });
});
