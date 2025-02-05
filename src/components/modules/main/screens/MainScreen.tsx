import { useState } from 'react';
import MainScreenBody from '@/components/modules/main/components/MainScreenBody';
import MainScreenAppBar from '@/components/modules/main/components/MainScreenAppBar';

function MainScreen() {
  const [appBarHeight, setAppBarHeight] = useState(0);

  return (
    <div className='flex-1 flex-col h-screen w-screen'>
      <MainScreenAppBar setHeight={setAppBarHeight} />
      <MainScreenBody appBarHeight={appBarHeight} />
    </div>
  );
}

export default MainScreen;
