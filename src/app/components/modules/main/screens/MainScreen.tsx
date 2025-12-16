import MainScreenAppBar from '@/app/components/modules/main/components/MainScreenAppBar';
import MainScreenBody from '@/app/components/modules/main/components/MainScreenBody';

function MainScreen() {
  return (
    <div className="flex h-screen w-screen flex-col">
      <MainScreenAppBar />
      <MainScreenBody />
    </div>
  );
}

export default MainScreen;
