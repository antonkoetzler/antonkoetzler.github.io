import MainScreenBodyProjectsSection from '@/app/components/modules/main/components/MainScreenBodyProjectsSection';
import ImageStore from '@/app/stores/image-store';
import i18n from '@/i18n';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBodyProjectsSection', () => {
  it('renders correctly', () => {
    render(<MainScreenBodyProjectsSection />);
    expect(screen.getByText(i18n.t('projectsTitle'))).toBeInTheDocument();

    // Myoro Matchup & Myoro Flutter Library
    expect(
      screen.getAllByAltText(ImageStore.dart.alt).length
    ).toBeGreaterThanOrEqual(2);
    expect(
      screen
        .getAllByAltText(ImageStore.dart.alt)
        .every((img) => img.getAttribute('src') === ImageStore.dart.src)
    ).toBe(true);
    expect(
      screen.getAllByAltText(ImageStore.flutter.alt).length
    ).toBeGreaterThanOrEqual(2);
    expect(
      screen
        .getAllByAltText(ImageStore.flutter.alt)
        .every((img) => img.getAttribute('src') === ImageStore.flutter.src)
    ).toBe(true);

    // Myoro Matchup
    expect(
      screen.getByText(i18n.t('projectsMyoroMatchupTitle'))
    ).toBeInTheDocument();
    expect(screen.getByAltText(ImageStore.postgres.alt)).toHaveAttribute(
      'src',
      ImageStore.postgres.src
    );
    expect(screen.getByAltText(ImageStore.supabase.alt)).toHaveAttribute(
      'src',
      ImageStore.supabase.src
    );
    expect(
      screen.getByText(`- ${i18n.t('projectsMyoroMatchupFact1')}`)
    ).toBeInTheDocument();
    expect(
      screen.getByText(`- ${i18n.t('projectsMyoroMatchupFact2')}`)
    ).toBeInTheDocument();
    expect(
      screen.getByText(`- ${i18n.t('projectsMyoroMatchupFact3')}`)
    ).toBeInTheDocument();

    // Myoro Flutter Library
    expect(
      screen.getByText(i18n.t('projectsMyoroFlutterLibraryTitle'))
    ).toBeInTheDocument();
    expect(screen.getByAltText(ImageStore.sqlite.alt)).toHaveAttribute(
      'src',
      ImageStore.sqlite.src
    );
    expect(
      screen.getByText(`- ${i18n.t('projectsMyoroFlutterLibraryFact1')}`)
    ).toBeInTheDocument();
    expect(
      screen.getByText(`- ${i18n.t('projectsMyoroFlutterLibraryFact2')}`)
    ).toBeInTheDocument();
    expect(
      screen.getByText(`- ${i18n.t('projectsMyoroFlutterLibraryFact3')}`)
    ).toBeInTheDocument();
    expect(
      screen.getByText(`- ${i18n.t('projectsMyoroFlutterLibraryFact4')}`)
    ).toBeInTheDocument();

    // nvim-config
    expect(
      screen.getByText(i18n.t('projectsNvimConfigTitle'))
    ).toBeInTheDocument();
    expect(screen.getByAltText(ImageStore.neovim.alt)).toHaveAttribute(
      'src',
      ImageStore.neovim.src
    );
    expect(screen.getByAltText(ImageStore.lua.alt)).toHaveAttribute(
      'src',
      ImageStore.lua.src
    );
    expect(
      screen.getByText(`- ${i18n.t('projectsNvimConfigFact1')}`)
    ).toBeInTheDocument();
    expect(
      screen.getByText(`- ${i18n.t('projectsNvimConfigFact2')}`)
    ).toBeInTheDocument();

    // vscode-config
    expect(
      screen.getByText(i18n.t('projectsVscodeConfigTitle'))
    ).toBeInTheDocument();
    expect(screen.getByAltText(ImageStore.vscode.alt)).toHaveAttribute(
      'src',
      ImageStore.vscode.src
    );
    expect(screen.getByAltText(ImageStore.json.alt)).toHaveAttribute(
      'src',
      ImageStore.json.src
    );
    expect(
      screen.getByText(`- ${i18n.t('projectsVscodeConfigFact1')}`)
    ).toBeInTheDocument();

    // antonkoetzler.github.io (portfolio)
    expect(
      screen.getByText(i18n.t('projectsPortfolioTitle'))
    ).toBeInTheDocument();
    expect(screen.getByAltText(ImageStore.typescript.alt)).toHaveAttribute(
      'src',
      ImageStore.typescript.src
    );
    expect(screen.getByAltText(ImageStore.bun.alt)).toHaveAttribute(
      'src',
      ImageStore.bun.src
    );
    expect(screen.getByAltText(ImageStore.react.alt)).toHaveAttribute(
      'src',
      ImageStore.react.src
    );
    expect(screen.getByAltText(ImageStore.tailwind.alt)).toHaveAttribute(
      'src',
      ImageStore.tailwind.src
    );
    expect(screen.getByAltText(ImageStore.shadcn.alt)).toHaveAttribute(
      'src',
      ImageStore.shadcn.src
    );
    expect(screen.getByAltText(ImageStore.vite.alt)).toHaveAttribute(
      'src',
      ImageStore.vite.src
    );
    expect(
      screen.getByText(`- ${i18n.t('projectsPortfolioFact1')}`)
    ).toBeInTheDocument();
  });
});
