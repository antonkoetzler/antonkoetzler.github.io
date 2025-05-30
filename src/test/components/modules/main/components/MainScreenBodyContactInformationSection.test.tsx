import MainScreenBodyContactInformationSection from '@/app/components/modules/main/components/MainScreenBodyContactInformationSection';
import i18n from '@/i18n';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBodyContactInformationSection', () => {
  it('renders correctly', () => {
    render(<MainScreenBodyContactInformationSection />);
    const email = 'antonkoetzler-faust@hotmail.com';
    const emailElement = screen.getByText(email);
    expect(emailElement).toBeInTheDocument();
    expect(emailElement).toHaveAttribute('href', `mailto:${email}`);
  });
});
