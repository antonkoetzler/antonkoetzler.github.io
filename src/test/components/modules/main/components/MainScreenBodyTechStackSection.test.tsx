import MainScreenBodyTechStackSection from '@/app/components/modules/main/components/MainScreenBodyTechStackSection';
import ImageStore from '@/app/stores/image-store';
import i18n from '@/i18n';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBodyTechStackSection', () => {
  it('renders correctly', () => {
    render(<MainScreenBodyTechStackSection />);
    expect(screen.getByText(i18n.t('techStackTitle'))).toBeInTheDocument();
    expect(screen.getByAltText(ImageStore.flutter.alt)).toHaveAttribute(
      'src',
      ImageStore.flutter.src
    );
    expect(screen.getByAltText(ImageStore.react.alt)).toHaveAttribute(
      'src',
      ImageStore.react.src
    );
    expect(screen.getByAltText(ImageStore.next.alt)).toHaveAttribute(
      'src',
      ImageStore.next.src
    );
    expect(screen.getByAltText(ImageStore.expo.alt)).toHaveAttribute(
      'src',
      ImageStore.expo.src
    );
    expect(screen.getByAltText(ImageStore.vite.alt)).toHaveAttribute(
      'src',
      ImageStore.vite.src
    );
    expect(screen.getByAltText(ImageStore.electron.alt)).toHaveAttribute(
      'src',
      ImageStore.electron.src
    );
    expect(screen.getByAltText(ImageStore.tailwind.alt)).toHaveAttribute(
      'src',
      ImageStore.tailwind.src
    );
    expect(screen.getByAltText(ImageStore.shadcn.alt)).toHaveAttribute(
      'src',
      ImageStore.shadcn.src
    );
    expect(screen.getByAltText(ImageStore.tamagui.alt)).toHaveAttribute(
      'src',
      ImageStore.tamagui.src
    );
    expect(screen.getByAltText(ImageStore.zod.alt)).toHaveAttribute(
      'src',
      ImageStore.zod.src
    );
    expect(screen.getByAltText(ImageStore.zustand.alt)).toHaveAttribute(
      'src',
      ImageStore.zustand.src
    );
    expect(screen.getByAltText(ImageStore.supabase.alt)).toHaveAttribute(
      'src',
      ImageStore.supabase.src
    );
    expect(screen.getByAltText(ImageStore.trpc.alt)).toHaveAttribute(
      'src',
      ImageStore.trpc.src
    );
    expect(screen.getByAltText(ImageStore.bun.alt)).toHaveAttribute(
      'src',
      ImageStore.bun.src
    );
    expect(screen.getByAltText(ImageStore.postgres.alt)).toHaveAttribute(
      'src',
      ImageStore.postgres.src
    );
    expect(screen.getByAltText(ImageStore.docker.alt)).toHaveAttribute(
      'src',
      ImageStore.docker.src
    );
    expect(screen.getByAltText(ImageStore.sqlite.alt)).toHaveAttribute(
      'src',
      ImageStore.sqlite.src
    );
    expect(screen.getByAltText(ImageStore.spring.alt)).toHaveAttribute(
      'src',
      ImageStore.spring.src
    );
  });
});
