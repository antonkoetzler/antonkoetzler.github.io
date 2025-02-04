import MainScreenBodyAboutMeSection from './MainScreenBodyAboutMeSection';
import MainScreenBodyDevStackSection from './MainScreenBodyDevStackSection';
import MainScreenBodyMeSection from './MainScreenBodyMeSection';
import MainScreenBodyTechStackSection from './MainScreenBodyTechStackSection';

export const mainScreenBodyMaxWidth: number = 525;

function MainScreenBody({ appBarHeight }: { appBarHeight: number }) {
  return (
    <div
      className={'flex-1 flex flex-col items-center justify-center gap-5 p-5 w-full mx-auto'}
      style={{
        maxWidth: `${mainScreenBodyMaxWidth}px`,
        paddingTop: `${appBarHeight + 15}px`,
      }}
    >
      <MainScreenBodyMeSection />
      <MainScreenBodyAboutMeSection />
      <MainScreenBodyTechStackSection />
      <MainScreenBodyDevStackSection />
    </div>
  );
}

export default MainScreenBody;