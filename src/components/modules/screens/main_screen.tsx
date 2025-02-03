import MainScreenAppBar from '../components/main_screen_app_bar';
import MainScreenBody from '../components/main_screen_body';

function MainScreen() {
  return (
    <div className='flex-1 flex-col h-screen w-screen'>
      <MainScreenAppBar />
      <MainScreenBody />
    </div>
  );
}

export default MainScreen;