import MainScreenBodyDevStackSection from '@/app/components/modules/main/components/MainScreenBodyDevStackSection';
import ImageStore from '@/app/stores/image-store';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBodyDevStackSection', () => {
  it('renders correctly', () => {
    render(<MainScreenBodyDevStackSection />);
    expect(screen.getByAltText(ImageStore.arch.alt)).toHaveAttribute('src', ImageStore.arch.src);
    expect(screen.getByAltText(ImageStore.hyprland.alt)).toHaveAttribute('src', ImageStore.hyprland.src);
    expect(screen.getByAltText(ImageStore.kitty.alt)).toHaveAttribute('src', ImageStore.kitty.src);
    expect(screen.getByAltText(ImageStore.windows.alt)).toHaveAttribute('src', ImageStore.windows.src);
    expect(screen.getByAltText(ImageStore.macos.alt)).toHaveAttribute('src', ImageStore.macos.src);
    expect(screen.getByAltText(ImageStore.neovim.alt)).toHaveAttribute('src', ImageStore.neovim.src);
    expect(screen.getByAltText(ImageStore.vscode.alt)).toHaveAttribute('src', ImageStore.vscode.src);
  });
});