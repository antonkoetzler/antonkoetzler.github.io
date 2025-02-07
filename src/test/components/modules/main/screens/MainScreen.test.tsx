import MainScreen from '@/app/components/modules/main/screens/MainScreen';
import { render } from '@testing-library/react';
import { describe, expect, it } from 'vitest';
import i18n from '@/i18n';
import { I18nextProvider } from 'react-i18next';

describe('MainScreen', () => {
  it('renders correctly', () => {
    const { container } = render(<I18nextProvider i18n={i18n}><MainScreen /></I18nextProvider>);
    expect(container.firstChild).toHaveClass('h-screen', 'w-screen', 'flex', 'flex-col');
    expect(container.firstChild?.childNodes.length).toBe(2);
  });
});