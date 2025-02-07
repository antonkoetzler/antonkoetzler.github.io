import MainScreenBodyAboutMeSection from '@/app/components/modules/main/components/MainScreenBodyAboutMeSection';
import MainScreenBodyContactInformationSection from '@/app/components/modules/main/components/MainScreenBodyContactInformationSection';
import MainScreenBodyDevStackSection from '@/app/components/modules/main/components/MainScreenBodyDevStackSection';
import MainScreenBodyMeImage from '@/app/components/modules/main/components/MainScreenBodyMeImage';
import MainScreenBodyProfessionalExperienceSection from '@/app/components/modules/main/components/MainScreenBodyProfessionalExperienceSection';
import MainScreenBodyProjectsSection from '@/app/components/modules/main/components/MainScreenBodyProjectsSection';
import MainScreenBodyTechStackSection from '@/app/components/modules/main/components/MainScreenBodyTechStackSection';

export const mainScreenBodyMaxWidth: number = 552;

function MainScreenBody() {
  return (
    <div
      role={'main'}
      className={'flex flex-col p-4 overflow-y-auto w-full items-center'}
    >
      <div
        className={'flex flex-col items-center gap-5'}
        style={{ maxWidth: `${mainScreenBodyMaxWidth}px` }}
      >
        <MainScreenBodyMeImage />
        <MainScreenBodyAboutMeSection />
        <Divider />
        <MainScreenBodyTechStackSection />
        <Divider />
        <MainScreenBodyDevStackSection />
        <Divider />
        <MainScreenBodyProfessionalExperienceSection />
        <Divider />
        <MainScreenBodyContactInformationSection />
        <Divider />
        <MainScreenBodyProjectsSection />
      </div>
    </div>
  );
}

function Divider() {
  return <div role={'separator'} className={'h-[1px] w-full bg-primary'} />;
}

export default MainScreenBody;
