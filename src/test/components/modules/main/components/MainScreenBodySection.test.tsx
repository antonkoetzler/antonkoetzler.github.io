import MainScreenBodySection from '@/app/components/modules/main/components/MainScreenBodySection';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBodySection', () => {
  it('renders correctly', () => {
    const title = 'Title';
    const content = 'Content';

    render(
      <MainScreenBodySection title={title}>{content}</MainScreenBodySection>
    );
    expect(screen.getByText(title)).toBeInTheDocument();
    expect(screen.getByText(content)).toBeInTheDocument();
  });
});
