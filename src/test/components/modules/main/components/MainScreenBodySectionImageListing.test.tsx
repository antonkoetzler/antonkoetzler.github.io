import MainScreenBodySectionImageListing from '@/app/components/modules/main/components/MainScreenBodySectionImageListing';
import ImageStore from '@/app/stores/image-store';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBodySectionImageListing', () => {
  it('renders correctly', () => {
    const src = ImageStore.arch.src;
    const alt = ImageStore.arch.alt;

    const { container } = render(
      <MainScreenBodySectionImageListing>
        <img src={ImageStore.arch.src} alt={ImageStore.arch.alt} />
      </MainScreenBodySectionImageListing>
    );
    expect(container.firstChild).toHaveClass('flex flex-row flex-wrap justify-center gap-4');
    expect(screen.getByAltText(alt)).toHaveAttribute('src', src);
  });
});