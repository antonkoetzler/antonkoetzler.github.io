import MainScreenAppBar from '@/app/components/modules/main/components/MainScreenAppBar';
import MainScreenBody from '@/app/components/modules/main/components/MainScreenBody';

function MainScreen() {
  return (
    <div className='h-screen w-screen flex flex-col'>
      <MainScreenAppBar />
      <MainScreenBody />
    </div>
  );
}

export default MainScreen;
