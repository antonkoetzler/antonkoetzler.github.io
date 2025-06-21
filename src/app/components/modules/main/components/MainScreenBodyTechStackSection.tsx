import MainScreenBodySection from '@/app/components/modules/main/components/MainScreenBodySection';
import MainScreenBodySectionImage from '@/app/components/modules/main/components/MainScreenBodySectionImage';
import MainScreenBodySectionImageListing from '@/app/components/modules/main/components/MainScreenBodySectionImageListing';
import ImageStore from '@/app/stores/image-store';

function MainScreenBodyTechStackSection() {
  return (
    <MainScreenBodySection title={'Tech Stack'}>
      <MainScreenBodySectionImageListing>
        <MainScreenBodySectionImage src={ImageStore.dart.src} alt={ImageStore.dart.alt} />
        <MainScreenBodySectionImage src={ImageStore.flutter.src} alt={ImageStore.flutter.alt} />
        <MainScreenBodySectionImage src={ImageStore.typescript.src} alt={ImageStore.typescript.alt} />
        <MainScreenBodySectionImage src={ImageStore.bun.src} alt={ImageStore.bun.alt} />
        <MainScreenBodySectionImage src={ImageStore.react.src} alt={ImageStore.react.alt} />
        <MainScreenBodySectionImage src={ImageStore.tailwind.src} alt={ImageStore.tailwind.alt} />
        <MainScreenBodySectionImage src={ImageStore.shadcn.src} alt={ImageStore.shadcn.alt} />
        <MainScreenBodySectionImage src={ImageStore.electron.src} alt={ImageStore.electron.alt} />
        <MainScreenBodySectionImage src={ImageStore.vite.src} alt={ImageStore.vite.alt} />
        <MainScreenBodySectionImage src={ImageStore.next.src} alt={ImageStore.next.alt} />
        <MainScreenBodySectionImage src={ImageStore.expo.src} alt={ImageStore.expo.alt} />
        <MainScreenBodySectionImage src={ImageStore.go.src} alt={ImageStore.go.alt} />
        <MainScreenBodySectionImage src={ImageStore.java.src} alt={ImageStore.java.alt} />
        <MainScreenBodySectionImage src={ImageStore.spring.src} alt={ImageStore.spring.alt} />
        <MainScreenBodySectionImage src={ImageStore.sqlite.src} alt={ImageStore.sqlite.alt} />
        <MainScreenBodySectionImage src={ImageStore.postgres.src} alt={ImageStore.postgres.alt} />
        <MainScreenBodySectionImage src={ImageStore.docker.src} alt={ImageStore.docker.alt} />
        <MainScreenBodySectionImage src={ImageStore.bash.src} alt={ImageStore.bash.alt} />
      </MainScreenBodySectionImageListing>
    </MainScreenBodySection>
  );
}

export default MainScreenBodyTechStackSection;
