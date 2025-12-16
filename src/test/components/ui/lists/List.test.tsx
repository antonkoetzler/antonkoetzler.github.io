import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';
import List from '@/app/components/ui/lists/List';

describe('List', () => {
  it('renders correctly', () => {
    const items = ['Hello', 'World'];
    const { container } = render(<List items={items} />);
    expect(container.firstChild).toHaveClass('list-none');
    expect(container.firstChild?.childNodes.length).toBe(2);
    items.forEach((item) =>
      expect(screen.getByText(`- ${item}`)).toBeInTheDocument()
    );
  });
});
