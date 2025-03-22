import MainScreenBodyProjectsSection from '@/app/components/modules/main/components/MainScreenBodyProjectsSection';
import ImageStore from '@/app/stores/image-store';
import i18n from '@/i18n';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBodyProjectsSection', () => {
  it('renders correctly', () => {
    render(<MainScreenBodyProjectsSection />);
    expect(screen.getByText(i18n.t('projectsTitle'))).toBeInTheDocument();

    expect(screen.getByText('Myoro Flutter Library')).toBeInTheDocument();
    expect(screen.getByAltText(ImageStore.dart.alt)).toHaveAttribute('src', ImageStore.dart.src);
    expect(screen.getByAltText(ImageStore.flutter.alt)).toHaveAttribute('src', ImageStore.flutter.src);
    expect(screen.getByAltText(ImageStore.sqlite.alt)).toHaveAttribute('src', ImageStore.sqlite.src);
    expect(screen.getByText(`- ${i18n.t('projectsMyoroFlutterLibraryFact1')}`)).toBeInTheDocument();
    expect(screen.getByText(`- ${i18n.t('projectsMyoroFlutterLibraryFact2')}`)).toBeInTheDocument();
    expect(screen.getByText(`- ${i18n.t('projectsMyoroFlutterLibraryFact3')}`)).toBeInTheDocument();
    expect(screen.getByText(`- ${i18n.t('projectsMyoroFlutterLibraryFact4')}`)).toBeInTheDocument();

    expect(screen.getByText('MyoroAPI')).toBeInTheDocument();
    expect(screen.getByAltText(ImageStore.php.alt)).toHaveAttribute('src', ImageStore.php.src);
    expect(screen.getByAltText(ImageStore.laravel.alt)).toHaveAttribute('src', ImageStore.laravel.src);
    expect(screen.getByAltText(ImageStore.postgres.alt)).toHaveAttribute('src', ImageStore.postgres.src);
    expect(screen.getByAltText(ImageStore.docker.alt)).toHaveAttribute('src', ImageStore.docker.src);
    expect(screen.getByText(`- ${i18n.t('projectsMyoroApiFact1')}`)).toBeInTheDocument();
    expect(screen.getByText(`- ${i18n.t('projectsMyoroApiFact2')}`)).toBeInTheDocument();

    expect(screen.getByText(i18n.t('projectsNvimConfigTitle'))).toBeInTheDocument();
    expect(screen.getByAltText(ImageStore.lua.alt)).toHaveAttribute('src', ImageStore.lua.src);
    expect(screen.getByAltText(ImageStore.neovim.alt)).toHaveAttribute('src', ImageStore.neovim.src);
    expect(screen.getByText(`- ${i18n.t('projectsNvimConfigFact1')}`)).toBeInTheDocument();
    expect(screen.getByText(`- ${i18n.t('projectsNvimConfigFact2')}`)).toBeInTheDocument();

    expect(screen.getByText(i18n.t('projectsPortfolioTitle'))).toBeInTheDocument();
    expect(screen.getByAltText(ImageStore.typescript.alt)).toHaveAttribute('src', ImageStore.typescript.src);
    expect(screen.getByAltText(ImageStore.bun.alt)).toHaveAttribute('src', ImageStore.bun.src);
    expect(screen.getByAltText(ImageStore.react.alt)).toHaveAttribute('src', ImageStore.react.src);
    expect(screen.getByAltText(ImageStore.tailwind.alt)).toHaveAttribute('src', ImageStore.tailwind.src);
    expect(screen.getByAltText(ImageStore.shadcn.alt)).toHaveAttribute('src', ImageStore.shadcn.src);
    expect(screen.getByAltText(ImageStore.vite.alt)).toHaveAttribute('src', ImageStore.vite.src);
    expect(screen.getByText(`- ${i18n.t('projectsPortfolioFact1')}`)).toBeInTheDocument();
    expect(screen.getByText(`- ${i18n.t('projectsPortfolioFact2')}`)).toBeInTheDocument();
  });
});
