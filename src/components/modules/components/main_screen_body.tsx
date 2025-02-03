import MainScreenBodyAboutMeSection from './main_screen_body_about_me_section';
import MainScreenBodyMeSection from './main_screen_body_me_section';

function MainScreenBody() {
  return (
    <div className='flex-1 flex flex-col items-center justify-center'>
      <MainScreenBodyMeSection />
      <MainScreenBodyAboutMeSection />
    </div>
  );
}

export default MainScreenBody;