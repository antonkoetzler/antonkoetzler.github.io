import MainScreenBodyMeImage from '@/app/components/modules/main/components/MainScreenBodyMeImage';
import ImageStore from '@/app/stores/image-store';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBodyMeImage', () => {
  it('renders correctly', () => {
    render(<MainScreenBodyMeImage />);
    const mainScreenBodyMeImage = screen.getByAltText('Me');
    expect(mainScreenBodyMeImage).toBeInTheDocument();
    expect(mainScreenBodyMeImage).toHaveAttribute('src', ImageStore.me.src);
  });
});