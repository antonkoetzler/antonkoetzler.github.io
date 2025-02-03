import { useEffect, useState } from 'react';

function MainScreenBodyMeSection() {
  const defaultSize = 300;
  const [size, setSize] = useState(defaultSize);

  useEffect(() => {
    const updateSize = () => {
      setSize(window.innerWidth <= defaultSize ? window.innerWidth : defaultSize);
    };
    updateSize();
    window.addEventListener('resize', updateSize);
    return () => window.removeEventListener('resize', updateSize);
  }, []);

  return (
    <img
      src={'./assets/images/me.jpg'}
      width={size}
      height={size}
      className={'rounded-lg border-2 border-[var(--border)]'}
    />
  );
}

export default MainScreenBodyMeSection;