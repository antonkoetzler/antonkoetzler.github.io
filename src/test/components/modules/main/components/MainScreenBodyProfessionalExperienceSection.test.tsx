import MainScreenBodyProfessionalExperienceSection from '@/app/components/modules/main/components/MainScreenBodyProfessionalExperienceSection';
import ImageStore from '@/app/stores/image-store';
import i18n from '@/i18n';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBodyProfessionalExperienceSection', () => {
  it('renders correctly', () => {
    render(<MainScreenBodyProfessionalExperienceSection />);
    expect(screen.getByText(i18n.t('professionalExperienceTitle'))).toBeInTheDocument();
    expect(screen.getByAltText(ImageStore.doutorie.alt)).toHaveAttribute('src', ImageStore.doutorie.src);
    expect(screen.getByText(i18n.t('professionalExperienceDoutorIeJobTitle'))).toBeInTheDocument();
    expect(
      screen.getByText(
        `${i18n.t('professionalExperienceDoutorIeStartDate')} - ${i18n.t('professionalExperienceDoutorIeEndDate')}`,
      ),
    ).toBeInTheDocument();

  });
});