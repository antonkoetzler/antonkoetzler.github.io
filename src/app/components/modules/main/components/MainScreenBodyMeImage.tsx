import { mainScreenBodyMaxWidth } from '@/app/components/modules/main/components/MainScreenBody';
import ImageStore from '@/app/stores/image-store';
import { useEffect, useState } from 'react';

function MainScreenBodyMeImage() {
  const defaultSize = mainScreenBodyMaxWidth - 160;
  const [size, setSize] = useState(defaultSize);

  useEffect(() => {
    function updateSize() {
      setSize(
        window.innerWidth <= defaultSize ? window.innerWidth : defaultSize
      );
    }
    updateSize();
    window.addEventListener('resize', updateSize);
    return () => window.removeEventListener('resize', updateSize);
  }, [defaultSize]);

  return (
    <img
      src={ImageStore.me.src}
      alt={ImageStore.me.alt}
      width={size}
      height={size}
      className={'rounded-sm border-2 border-[var(--foreground)]'}
    />
  );
}

export default MainScreenBodyMeImage;
