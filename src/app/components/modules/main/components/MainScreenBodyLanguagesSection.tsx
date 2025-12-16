import MainScreenBodySection from '@/app/components/modules/main/components/MainScreenBodySection';
import MainScreenBodySectionImage from '@/app/components/modules/main/components/MainScreenBodySectionImage';
import MainScreenBodySectionImageListing from '@/app/components/modules/main/components/MainScreenBodySectionImageListing';
import ImageStore from '@/app/stores/image-store';
import { useTranslation } from 'react-i18next';

function MainScreenBodyLanguagesSection() {
  const { t } = useTranslation();

  return (
    <MainScreenBodySection title={t('languagesTitle')}>
      <MainScreenBodySectionImageListing>
        <MainScreenBodySectionImage
          src={ImageStore.dart.src}
          alt={ImageStore.dart.alt}
        />
        <MainScreenBodySectionImage
          src={ImageStore.typescript.src}
          alt={ImageStore.typescript.alt}
        />
        <MainScreenBodySectionImage
          src={ImageStore.java.src}
          alt={ImageStore.java.alt}
        />
        <MainScreenBodySectionImage
          src={ImageStore.bash.src}
          alt={ImageStore.bash.alt}
        />
      </MainScreenBodySectionImageListing>
    </MainScreenBodySection>
  );
}

export default MainScreenBodyLanguagesSection;
