import { Button } from '@/components/ui/Button';
import { useEffect, useRef, useState } from 'react';
import { useTranslation } from 'react-i18next';

function MainScreenAppBar({ setHeight }: { setHeight: (h: number) => void }) {
  const { t } = useTranslation();
  const [name, setName] = useState('');
  const ref = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const setup = () => {
      // Name displayed in accordance with available width.
      setName(
        window.innerWidth >= 750
          ? 'Anton Louis Koetzler-Faust'
          : window.innerWidth >= 650
            ? 'Anton Koetzler-Faust'
            : 'Anton K-F'
      );

      // Get the height of the app bar to pass to [MainScreenBody].
      if (ref.current) setHeight(ref.current.offsetHeight);
    };

    setup();
    window.addEventListener('resize', setup);
    return () => window.removeEventListener('resize', setup);
  }, [setHeight]);

  return (
    <div ref={ref} className='fixed top-p w-full z-50 flex flex-row justify-between p-2 bg-background border-b border-[var(--background)]'>
      <Button asChild><a href={'https://github.com/antonkoetzler'}>GitHub</a></Button>
      <h1 className='font-semibold'>{name}</h1>
      <Button asChild><a href={t('resumeLink')}>Résumé</a></Button>
    </div>
  );
}

export default MainScreenAppBar;