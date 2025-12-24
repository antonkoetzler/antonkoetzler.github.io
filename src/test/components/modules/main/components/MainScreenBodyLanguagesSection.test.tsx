import MainScreenBodyLanguagesSection from '@/app/components/modules/main/components/MainScreenBodyLanguagesSection';
import ImageStore from '@/app/stores/image-store';
import i18n from '@/i18n';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBodyLanguagesSection', () => {
  it('renders correctly', () => {
    render(<MainScreenBodyLanguagesSection />);
    expect(screen.getByText(i18n.t('languagesTitle'))).toBeInTheDocument();
    expect(screen.getByAltText(ImageStore.dart.alt)).toHaveAttribute(
      'src',
      ImageStore.dart.src
    );
    expect(screen.getByAltText(ImageStore.typescript.alt)).toHaveAttribute(
      'src',
      ImageStore.typescript.src
    );
    expect(screen.getByAltText(ImageStore.bash.alt)).toHaveAttribute(
      'src',
      ImageStore.bash.src
    );
  });
});
