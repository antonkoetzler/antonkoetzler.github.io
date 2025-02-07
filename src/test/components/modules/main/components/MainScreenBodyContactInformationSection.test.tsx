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
    const phoneNumberElement = screen.getByText(i18n.t('+55 (48) 98818-9095'));
    expect(phoneNumberElement).toBeInTheDocument();
    expect(phoneNumberElement).toHaveAttribute('href', 'https://wa.me/5548988189095');
  });
});