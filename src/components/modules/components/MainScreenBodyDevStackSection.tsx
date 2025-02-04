import ImageStore from '@/stores/image-store';
import MainScreenBodySection from './MainScreenBodySection';
import MainScreenBodySectionImage from './MainScreenBodySectionImage';
import MainScreenBodySectionImageListing from './MainScreenBodySectionImageListing';

function MainScreenBodyDevStackSection() {
  return (
    <MainScreenBodySection title={'Dev Stack'}>
      <MainScreenBodySectionImageListing>
        <MainScreenBodySectionImage path={ImageStore.arch} />
        <MainScreenBodySectionImage path={ImageStore.hyprland} />
        <MainScreenBodySectionImage path={ImageStore.neovim} />
        <MainScreenBodySectionImage path={ImageStore.kitty} />
      </MainScreenBodySectionImageListing>
    </MainScreenBodySection>

  );
}

export default MainScreenBodyDevStackSection;