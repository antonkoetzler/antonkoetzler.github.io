import MainScreenBody from '@/app/components/modules/main/components/MainScreenBody';
import ImageStore from '@/app/stores/image-store';
import i18n from '@/i18n';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

// eslint-disable-next-line @typescript-eslint/no-unused-vars
import MainScreenBodyMeImage from '@/app/components/modules/main/components/MainScreenBodyMeImage';
// eslint-disable-next-line @typescript-eslint/no-unused-vars
import MainScreenBodyAboutMeSection from '@/app/components/modules/main/components/MainScreenBodyAboutMeSection';
// eslint-disable-next-line @typescript-eslint/no-unused-vars
import MainScreenBodyTechStackSection from '@/app/components/modules/main/components/MainScreenBodyTechStackSection';
// eslint-disable-next-line @typescript-eslint/no-unused-vars
import MainScreenBodyDevStackSection from '@/app/components/modules/main/components/MainScreenBodyDevStackSection';
// eslint-disable-next-line @typescript-eslint/no-unused-vars
import MainScreenBodyProfessionalExperienceSection from '@/app/components/modules/main/components/MainScreenBodyProfessionalExperienceSection';
// eslint-disable-next-line @typescript-eslint/no-unused-vars
import MainScreenBodyContactInformationSection from '@/app/components/modules/main/components/MainScreenBodyProfessionalExperienceSection';
// eslint-disable-next-line @typescript-eslint/no-unused-vars
import MainScreenBodyProjectsSection from '@/app/components/modules/main/components/MainScreenBodyProjectsSection';

describe('MainScreenBody', () => {
  it('renders correctly', () => {
    render(<MainScreenBody />);

    /**
      * @see {@link MainScreenBody}
      */
    expect(screen.getByRole('main')).toBeInTheDocument();

    // Dividers.
    expect(screen.getAllByRole('separator')).toHaveLength(5);

    /**
      * @see {@link MainScreenBodyMeImage}
      */
    expect(screen.getByAltText('Me')).toBeInTheDocument();


    /**
      * @see {@link MainScreenBodyAboutMeSection}
      */
    expect(screen.getByText(`- ${i18n.t('aboutMeFact1')}`));

    /**
     * @see {@link MainScreenBodyTechStackSection}
     */
    expect(screen.getByText('Tech Stack')).toBeInTheDocument();

    /**
     * @see {@link MainScreenBodyDevStackSection}
     */
    expect(screen.getByAltText(ImageStore.arch.alt)).toHaveAttribute('src', ImageStore.arch.src);

    /**
     * @see {@link MainScreenBodyProfessionalExperienceSection}
     */
    expect(screen.getByText(i18n.t('professionalExperienceTitle'))).toBeInTheDocument();

    /**
     * @see {@link MainScreenBodyContactInformationSection}
     */
    expect(screen.getByText(i18n.t('contactInformationTitle'))).toBeInTheDocument();

    /**
     * @see {@link MainScreenBodyProjectsSection}
     */
    expect(screen.getByText(i18n.t('projectsTitle'))).toBeInTheDocument();
  });
});
