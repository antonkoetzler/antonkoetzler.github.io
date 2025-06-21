import MainScreenBodyTechStackSection from '@/app/components/modules/main/components/MainScreenBodyTechStackSection';
import ImageStore from '@/app/stores/image-store';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBodyTechStackSection', () => {
  it('renders correctly', () => {
    render(<MainScreenBodyTechStackSection />);
    expect(screen.getByText('Tech Stack')).toBeInTheDocument();
    expect(screen.getByAltText(ImageStore.dart.alt)).toHaveAttribute('src', ImageStore.dart.src);
    expect(screen.getByAltText(ImageStore.flutter.alt)).toHaveAttribute('src', ImageStore.flutter.src);
    expect(screen.getByAltText(ImageStore.typescript.alt)).toHaveAttribute('src', ImageStore.typescript.src);
    expect(screen.getByAltText(ImageStore.bun.alt)).toHaveAttribute('src', ImageStore.bun.src);
    expect(screen.getByAltText(ImageStore.react.alt)).toHaveAttribute('src', ImageStore.react.src);
    expect(screen.getByAltText(ImageStore.tailwind.alt)).toHaveAttribute('src', ImageStore.tailwind.src);
    expect(screen.getByAltText(ImageStore.shadcn.alt)).toHaveAttribute('src', ImageStore.shadcn.src);
    expect(screen.getByAltText(ImageStore.electron.alt)).toHaveAttribute('src', ImageStore.electron.src);
    expect(screen.getByAltText(ImageStore.vite.alt)).toHaveAttribute('src', ImageStore.vite.src);
    expect(screen.getByAltText(ImageStore.next.alt)).toHaveAttribute('src', ImageStore.next.src);
    expect(screen.getByAltText(ImageStore.expo.alt)).toHaveAttribute('src', ImageStore.expo.src);
    expect(screen.getByAltText(ImageStore.go.alt)).toHaveAttribute('src', ImageStore.go.src);
    expect(screen.getByAltText(ImageStore.java.alt)).toHaveAttribute('src', ImageStore.java.src);
    expect(screen.getByAltText(ImageStore.spring.alt)).toHaveAttribute('src', ImageStore.spring.src);
    expect(screen.getByAltText(ImageStore.sqlite.alt)).toHaveAttribute('src', ImageStore.sqlite.src);
    expect(screen.getByAltText(ImageStore.postgres.alt)).toHaveAttribute('src', ImageStore.postgres.src);
    expect(screen.getByAltText(ImageStore.docker.alt)).toHaveAttribute('src', ImageStore.docker.src);
    expect(screen.getByAltText(ImageStore.bash.alt)).toHaveAttribute('src', ImageStore.bash.src);
  });
});
