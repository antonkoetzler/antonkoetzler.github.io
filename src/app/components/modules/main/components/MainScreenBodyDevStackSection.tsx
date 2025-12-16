import MainScreenBodySection from '@/app/components/modules/main/components/MainScreenBodySection';
import MainScreenBodySectionImage from '@/app/components/modules/main/components/MainScreenBodySectionImage';
import MainScreenBodySectionImageListing from '@/app/components/modules/main/components/MainScreenBodySectionImageListing';
import ImageStore from '@/app/stores/image-store';
import { useTranslation } from 'react-i18next';

function MainScreenBodyDevStackSection() {
  const { t } = useTranslation();

  return (
    <MainScreenBodySection title={t('devStackTitle')}>
      <MainScreenBodySectionImageListing>
        <MainScreenBodySectionImage
          src={ImageStore.arch.src}
          alt={ImageStore.arch.alt}
        />
        <MainScreenBodySectionImage
          src={ImageStore.hyprland.src}
          alt={ImageStore.hyprland.alt}
        />
        <MainScreenBodySectionImage
          src={ImageStore.macos.src}
          alt={ImageStore.macos.alt}
        />
        <MainScreenBodySectionImage
          src={ImageStore.windows11.src}
          alt={ImageStore.windows11.alt}
          size={45}
        />
        <MainScreenBodySectionImage
          src={ImageStore.cursor.src}
          alt={ImageStore.cursor.alt}
        />
        <MainScreenBodySectionImage
          src={ImageStore.wezterm.src}
          alt={ImageStore.wezterm.alt}
        />
        <MainScreenBodySectionImage
          src={ImageStore.neovim.src}
          alt={ImageStore.neovim.alt}
        />
        <MainScreenBodySectionImage
          src={ImageStore.notion.src}
          alt={ImageStore.notion.alt}
        />
      </MainScreenBodySectionImageListing>
    </MainScreenBodySection>
  );
}

export default MainScreenBodyDevStackSection;
