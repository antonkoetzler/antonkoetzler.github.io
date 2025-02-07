import CopyTextButton from '@/app/components/ui/buttons/CopyTextButton';
import { render, screen } from '@testing-library/react';
import { describe, expect, it, vi } from 'vitest';
import userEvent from '@testing-library/user-event';

describe('CopyTextButton', () => {
  it('renders correctly', async () => {
    const text = 'Sample text';
    Object.assign(navigator, {
      clipboard: {
        writeText: vi.fn(),
      },
    });

    render(<CopyTextButton text={text} />);

    const button = screen.getByRole('button');
    await userEvent.click(button);

    expect(navigator.clipboard.writeText).toHaveBeenCalledWith(text);
  });
});