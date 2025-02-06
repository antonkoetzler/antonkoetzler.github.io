import MainScreenBodySection from '@/app/components/modules/main/components/MainScreenBodySection';
import MainScreenBodySectionImage from '@/app/components/modules/main/components/MainScreenBodySectionImage';
import MainScreenBodySectionImageListing from '@/app/components/modules/main/components/MainScreenBodySectionImageListing';
import ImageStore from '@/app/stores/image-store';

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
