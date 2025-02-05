import { useState } from 'react';
import MainScreenAppBar from '../components/MainScreenAppBar';
import MainScreenBody from '../components/MainScreenBody';

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
