import ImageStore from '@/stores/image-store';
import MainScreenBodySection from './MainScreenBodySection';
import MainScreenBodySectionImage from './MainScreenBodySectionImage';
import MainScreenBodySectionImageListing from './MainScreenBodySectionImageListing';

function MainScreenBodyTechStackSection() {
  return (
    <MainScreenBodySection title={'Tech Stack'}>
      <MainScreenBodySectionImageListing>
        <MainScreenBodySectionImage path={ImageStore.dart} />
        <MainScreenBodySectionImage path={ImageStore.flutter} />
        <MainScreenBodySectionImage path={ImageStore.javascript} />
        <MainScreenBodySectionImage path={ImageStore.typescript} />
        <MainScreenBodySectionImage path={ImageStore.node} />
        <MainScreenBodySectionImage path={ImageStore.bun} />
        <MainScreenBodySectionImage path={ImageStore.react} />
        <MainScreenBodySectionImage path={ImageStore.shadcn} />
        <MainScreenBodySectionImage path={ImageStore.electron} />
        <MainScreenBodySectionImage path={ImageStore.vite} />
        <MainScreenBodySectionImage path={ImageStore.next} />
        <MainScreenBodySectionImage path={ImageStore.php} />
        <MainScreenBodySectionImage path={ImageStore.laravel} />
        <MainScreenBodySectionImage path={ImageStore.sqlite} />
        <MainScreenBodySectionImage path={ImageStore.postgres} />
        <MainScreenBodySectionImage path={ImageStore.docker} />
      </MainScreenBodySectionImageListing>
    </MainScreenBodySection>
  );
}

export default MainScreenBodyTechStackSection;