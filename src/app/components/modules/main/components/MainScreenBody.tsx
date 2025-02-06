import MainScreenBodyAboutMeSection from '@/app/components/modules/main/components/MainScreenBodyAboutMeSection';
import MainScreenBodyContactInformationSection from '@/app/components/modules/main/components/MainScreenBodyContactInformationSection';
import MainScreenBodyDevStackSection from '@/app/components/modules/main/components/MainScreenBodyDevStackSection';
import MainScreenBodyMeImage from '@/app/components/modules/main/components/MainScreenBodyMeImage';
import MainScreenBodyProfessionalExperience from '@/app/components/modules/main/components/MainScreenBodyProfessionalExperience';
import MainScreenBodyProjectsSection from '@/app/components/modules/main/components/MainScreenBodyProjectsSection';
import MainScreenBodyTechStackSection from '@/app/components/modules/main/components/MainScreenBodyTechStackSection';

export const mainScreenBodyMaxWidth: number = 552;

function MainScreenBody({ appBarHeight }: { appBarHeight: number }) {
  return (
    <div
      role={'main'}
      className={
        'mx-auto flex w-full flex-1 flex-col items-center justify-center gap-5 p-4'
      }
      style={{
        maxWidth: `${mainScreenBodyMaxWidth}px`,
        paddingTop: `${appBarHeight + 25}px`,
      }}
    >
      <MainScreenBodyMeImage />
      <MainScreenBodyAboutMeSection />
      <Divider />
      <MainScreenBodyTechStackSection />
      <Divider />
      <MainScreenBodyDevStackSection />
      <Divider />
      <MainScreenBodyProfessionalExperience />
      <Divider />
      <MainScreenBodyContactInformationSection />
      <Divider />
      <MainScreenBodyProjectsSection />
    </div>
  );
}

function Divider() {
  return <div role={'separator'} className={'h-[1px] w-full bg-primary'} />;
}

export default MainScreenBody;
