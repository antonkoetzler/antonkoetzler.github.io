import MainScreenBodySectionImage from '@/app/components/modules/main/components/MainScreenBodySectionImage';
import ImageStore from '@/app/stores/image-store';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBodySectionImage', () => {
  it('renders correctly', () => {
    const src = ImageStore.arch.src;
    const alt = ImageStore.arch.alt;

    render(
      <MainScreenBodySectionImage
        src={src}
        alt={alt}
      />
    );
    expect(screen.getByAltText(alt)).toBeInTheDocument();
    expect(screen.getByAltText(alt)).toHaveAttribute('src', src);
    expect(screen.getByAltText(alt)).toHaveAttribute('width', '50');
    expect(screen.getByAltText(alt)).toHaveAttribute('height', '50');
    expect(screen.getByAltText(alt)).toHaveClass('object-contain');
  });
});