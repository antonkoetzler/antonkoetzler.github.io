import MainScreenBodyProfessionalExperienceSection from '@/app/components/modules/main/components/MainScreenBodyProfessionalExperienceSection';
import ImageStore from '@/app/stores/image-store';
import i18n from '@/i18n';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBodyProfessionalExperienceSection', () => {
  it('renders correctly', () => {
    // Render
    render(<MainScreenBodyProfessionalExperienceSection />);

    // Title
    expect(
      screen.getByText(i18n.t('professionalExperienceTitle'))
    ).toBeInTheDocument();

    // Olly Olly
    expect(screen.getByAltText(ImageStore.ollyolly.alt)).toHaveAttribute(
      'src',
      ImageStore.ollyolly.src
    );
    expect(
      screen.getByText(i18n.t('professionalExperienceOllyOllyCompany'))
    ).toBeInTheDocument();
    expect(
      screen.getByText(i18n.t('professionalExperienceOllyOllyJobTitle'))
    ).toBeInTheDocument();
    expect(
      screen.getByText(
        `${i18n.t('professionalExperienceOllyOllyStartDate')} - ${i18n.t('professionalExperienceOllyOllyEndDate')}`
      )
    ).toBeInTheDocument();

    // Prolog
    expect(screen.getByAltText(ImageStore.prolog.alt)).toHaveAttribute(
      'src',
      ImageStore.prolog.src
    );
    expect(
      screen.getByText(i18n.t('professionalExperienceTitle'))
    ).toBeInTheDocument();
    expect(
      screen.getByText(i18n.t('professionalExperiencePrologAppCompany'))
    ).toBeInTheDocument();
    expect(
      screen.getByText(
        `${i18n.t('professionalExperiencePrologAppStartDate')} - ${i18n.t('professionalExperiencePrologAppEndDate')}`
      )
    ).toBeInTheDocument();

    // Doutor-IE
    expect(screen.getByAltText(ImageStore.doutorie.alt)).toHaveAttribute(
      'src',
      ImageStore.doutorie.src
    );
    expect(
      screen.getByText(i18n.t('professionalExperienceDoutorIeCompany'))
    ).toBeInTheDocument();
    expect(
      screen.getByText(i18n.t('professionalExperienceDoutorIeJobTitle'))
    ).toBeInTheDocument();
    expect(
      screen.getByText(
        `${i18n.t('professionalExperienceDoutorIeStartDate')} - ${i18n.t('professionalExperienceDoutorIeEndDate')}`
      )
    ).toBeInTheDocument();
  });
});
