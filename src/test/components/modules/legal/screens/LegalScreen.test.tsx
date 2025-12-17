import LegalScreen from '@/app/components/modules/legal/screens/LegalScreen';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';
import { BrowserRouter } from 'react-router-dom';

describe('LegalScreen', () => {
  it('renders correctly', () => {
    render(
      <BrowserRouter>
        <LegalScreen />
      </BrowserRouter>
    );
    expect(screen.getByRole('main')).toBeInTheDocument();
  });
});
