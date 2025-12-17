import LegalScreen from '@/app/components/modules/legal/screens/LegalScreen';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';
import { HashRouter } from 'react-router-dom';

describe('LegalScreen', () => {
  it('renders correctly', () => {
    render(
      <HashRouter>
        <LegalScreen />
      </HashRouter>
    );
    expect(screen.getByRole('main')).toBeInTheDocument();
  });
});
