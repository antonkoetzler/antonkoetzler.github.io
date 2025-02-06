import MainScreenBody from '@/app/components/modules/main/components/MainScreenBody';
import ImageStore from '@/app/stores/image-store';
import i18n from '@/i18n';
import { faker } from '@faker-js/faker';
import { render, screen } from '@testing-library/react';
import { describe, expect, it } from 'vitest';

describe('MainScreenBody', () => {
  it('renders correctly', () => {
    const appBarHeight = faker.number.float({ min: 0, max: 100 });
    render(<MainScreenBody appBarHeight={appBarHeight} />);

    expect(screen.getByRole('main')).toBeInTheDocument();

    const mainScreenBodyMeImage = screen.getByAltText('Me');
    expect(mainScreenBodyMeImage).toBeInTheDocument();
    expect(mainScreenBodyMeImage).toHaveAttribute('src', ImageStore.me);

    expect(screen.getByText(`- ${i18n.t('aboutMeFact1')}`));
    expect(screen.getByText(`- ${i18n.t('aboutMeFact2')}`));
    expect(screen.getByText(`- ${i18n.t('aboutMeFact3')}`));
    expect(screen.getByText(`- ${i18n.t('aboutMeFact4')}`));
    expect(screen.getByText(`- ${i18n.t('aboutMeFact5')}`));

    expect(screen.getAllByRole('separator')).toHaveLength(5);

    FINISH NOT DONE YET
  });
});
