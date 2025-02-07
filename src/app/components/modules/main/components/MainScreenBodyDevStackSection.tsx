import MainScreenBodySection from '@/app/components/modules/main/components/MainScreenBodySection';
import MainScreenBodySectionImage from '@/app/components/modules/main/components/MainScreenBodySectionImage';
import MainScreenBodySectionImageListing from '@/app/components/modules/main/components/MainScreenBodySectionImageListing';
import ImageStore from '@/app/stores/image-store';

function MainScreenBodyDevStackSection() {
  return (
    <MainScreenBodySection title={'Dev Stack'}>
      <MainScreenBodySectionImageListing>
        <MainScreenBodySectionImage src={ImageStore.arch.src} alt={ImageStore.arch.alt} />
        <MainScreenBodySectionImage src={ImageStore.hyprland.src} alt={ImageStore.hyprland.alt} />
        <MainScreenBodySectionImage src={ImageStore.neovim.src} alt={ImageStore.neovim.alt} />
        <MainScreenBodySectionImage src={ImageStore.kitty.src} alt={ImageStore.kitty.alt} />
      </MainScreenBodySectionImageListing>
    </MainScreenBodySection>
  );
}

export default MainScreenBodyDevStackSection;
