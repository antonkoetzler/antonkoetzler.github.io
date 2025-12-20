import MainScreenBodyDevStackSection from '@/app/components/modules/main/components/MainScreenBodyDevStackSection';
import ImageStore from '@/app/stores/image-store';
import i18n from '@/i18n';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBodyDevStackSection', () => {
  it('renders correctly', () => {
    render(<MainScreenBodyDevStackSection />);
    expect(screen.getByText(i18n.t('devStackTitle'))).toBeInTheDocument();
    expect(screen.getByAltText(ImageStore.arch.alt)).toHaveAttribute(
      'src',
      ImageStore.arch.src
    );
    expect(screen.getByAltText(ImageStore.hyprland.alt)).toHaveAttribute(
      'src',
      ImageStore.hyprland.src
    );
    expect(screen.getByAltText(ImageStore.macos.alt)).toHaveAttribute(
      'src',
      ImageStore.macos.src
    );
    expect(screen.getByAltText(ImageStore.windows11.alt)).toHaveAttribute(
      'src',
      ImageStore.windows11.src
    );
    expect(screen.getByAltText(ImageStore.cursor.alt)).toHaveAttribute(
      'src',
      ImageStore.cursor.src
    );
    expect(screen.getByAltText(ImageStore.wezterm.alt)).toHaveAttribute(
      'src',
      ImageStore.wezterm.src
    );
    expect(screen.getByAltText(ImageStore.neovim.alt)).toHaveAttribute(
      'src',
      ImageStore.neovim.src
    );
    expect(screen.getByAltText(ImageStore.affine.alt)).toHaveAttribute(
      'src',
      ImageStore.affine.src
    );
  });
});
