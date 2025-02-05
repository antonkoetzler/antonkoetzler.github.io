import MainScreenBodyAboutMeSection from './MainScreenBodyAboutMeSection';
import MainScreenBodyContactInformationSection from './MainScreenBodyContactInformationSection';
import MainScreenBodyDevStackSection from './MainScreenBodyDevStackSection';
import MainScreenBodyMeImage from './MainScreenBodyMeImage';
import MainScreenBodyProfessionalExperience from './MainScreenBodyProfessionalExperience';
import MainScreenBodyProjectsSection from './MainScreenBodyProjectsSection';
import MainScreenBodyTechStackSection from './MainScreenBodyTechStackSection';

export const mainScreenBodyMaxWidth: number = 552;

function MainScreenBody({ appBarHeight }: { appBarHeight: number }) {
  return (
    <div
      className={'flex-1 flex flex-col items-center justify-center gap-5 p-4 w-full mx-auto'}
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
  return (
    <div className={'w-full h-[1px] bg-primary'} />
  )
}

export default MainScreenBody;
