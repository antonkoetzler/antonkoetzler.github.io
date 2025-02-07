import { mainScreenBodyMaxWidth } from '@/app/components/modules/main/components/MainScreenBody';
import MainScreenBodyMeImage from '@/app/components/modules/main/components/MainScreenBodyMeImage';
import ImageStore from '@/app/stores/image-store';
import { render } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBodyMeImage', () => {
  it('renders correctly', () => {
    const defaultSize = mainScreenBodyMaxWidth - 160;

    // Use [defaultSize] in [updateSize].
    window.innerWidth = defaultSize + 11;

    render(<MainScreenBodyMeImage />);

    // Render the component
    const { container } = render(<MainScreenBodyMeImage />);

    // Assert the width attribute of the image
    expect(container.firstChild).toHaveAttribute('src', ImageStore.me.src);
    expect(container.firstChild).toHaveAttribute('alt', ImageStore.me.alt);
    expect(container.firstChild).toHaveAttribute('width', defaultSize.toString());
    expect(container.firstChild).toHaveAttribute('height', defaultSize.toString());

    window.innerWidth = defaultSize + 10;
    const newImageSize = window.innerWidth - 10;
    window.dispatchEvent(new Event('resize'));

    expect(container.firstChild).toHaveAttribute('width', newImageSize.toString());
    expect(container.firstChild).toHaveAttribute('height', newImageSize.toString());
  });
});