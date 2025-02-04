import ImageStore from '@/stores/image-store';
import { useEffect, useState } from 'react';
import { mainScreenBodyMaxWidth } from './MainScreenBody';

function MainScreenBodyMeSection() {
  const defaultSize = mainScreenBodyMaxWidth - 100;
  const [size, setSize] = useState(defaultSize);

  useEffect(() => {
    const updateSize = () => {
      setSize(window.innerWidth <= defaultSize ? window.innerWidth : defaultSize);
    };
    updateSize();
    window.addEventListener('resize', updateSize);
    return () => window.removeEventListener('resize', updateSize);
  }, [defaultSize]);

  return (
    <img
      src={ImageStore.me}
      width={size}
      height={size}
      className={'rounded-sm border-2 border-[var(--background)]'}
    />
  );
}

export default MainScreenBodyMeSection;