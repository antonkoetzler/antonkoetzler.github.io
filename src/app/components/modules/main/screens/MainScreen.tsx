import MainScreenAppBar from '@/app/components/modules/main/components/MainScreenAppBar';
import MainScreenBody from '@/app/components/modules/main/components/MainScreenBody';
import { useState } from 'react';

function MainScreen() {
  const [appBarHeight, setAppBarHeight] = useState(0);

  return (
    <div className="h-screen w-screen flex-1 flex-col">
      <MainScreenAppBar setHeight={setAppBarHeight} />
      <MainScreenBody appBarHeight={appBarHeight} />
    </div>
  );
}

export default MainScreen;
