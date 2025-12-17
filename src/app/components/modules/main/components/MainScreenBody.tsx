import MainScreenBodyAboutMeSection from '@/app/components/modules/main/components/MainScreenBodyAboutMeSection';
import MainScreenBodyContactInformationSection from '@/app/components/modules/main/components/MainScreenBodyContactInformationSection';
import MainScreenBodyDevStackSection from '@/app/components/modules/main/components/MainScreenBodyDevStackSection';
import MainScreenBodyMeImage from '@/app/components/modules/main/components/MainScreenBodyMeImage';
import MainScreenBodyProfessionalExperienceSection from '@/app/components/modules/main/components/MainScreenBodyProfessionalExperienceSection';
import MainScreenBodyLanguagesSection from '@/app/components/modules/main/components/MainScreenBodyLanguagesSection';
import MainScreenBodyProjectsSection from '@/app/components/modules/main/components/MainScreenBodyProjectsSection';
import MainScreenBodyTechStackSection from '@/app/components/modules/main/components/MainScreenBodyTechStackSection';
import MainScreenBodyNotionSection from '@/app/components/modules/main/components/MainScreenBodyNotionSection';

export const mainScreenBodyMaxWidth: number = 578;

function MainScreenBody() {
  return (
    <div
      role={'main'}
      className={'flex w-full flex-col items-center overflow-y-auto p-4'}
    >
      <div
        className={'flex flex-col items-center gap-5'}
        style={{ maxWidth: `${mainScreenBodyMaxWidth}px` }}
      >
        <MainScreenBodyMeImage />
        <MainScreenBodyAboutMeSection />
        <Divider />
        <MainScreenBodyContactInformationSection />
        <Divider />
        <MainScreenBodyNotionSection />
        <Divider />
        <MainScreenBodyLanguagesSection />
        <Divider />
        <MainScreenBodyTechStackSection />
        <Divider />
        <MainScreenBodyDevStackSection />
        <Divider />
        <MainScreenBodyProfessionalExperienceSection />
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
