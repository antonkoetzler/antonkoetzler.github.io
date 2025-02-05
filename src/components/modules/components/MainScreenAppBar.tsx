import { Button } from '@/components/ui/buttons/Button';
import { useEffect, useRef, useState } from 'react';
import { useTranslation } from 'react-i18next';

function MainScreenAppBar({ setHeight }: { setHeight: (h: number) => void }) {
  const { t } = useTranslation();
  const [name, setName] = useState('');
  const ref = useRef<HTMLDivElement>(null);

  useEffect(() => {
    function setup() {
      // Name displayed in accordance with available width.
      setName(
        window.innerWidth >= 675
          ? 'Anton Louis Koetzler-Faust'
          : window.innerWidth >= 575
            ? 'Anton Koetzler-Faust'
            : window.innerWidth >= 375
              ? 'Anton K-F'
              : 'AKF',
      );

      // Get the height of the app bar to pass to [MainScreenBody].
      if (ref.current) setHeight(ref.current.offsetHeight);
    };

    setup();
    window.addEventListener('resize', setup);
    return () => window.removeEventListener('resize', setup);
  }, [setHeight]);

  return (
    <div
      ref={ref}
      className='fixed top-p w-full z-50 flex flex-row justify-between items-center p-2 bg-background border-b-2 border-[color:var(--foreground)] important!'
    >
      <Button asChild><a href={'https://github.com/antonkoetzler'}>GitHub</a></Button>
      <p className='text-[32px] font-semibold'>{name}</p>
      <Button asChild><a href={t('resumeLink')}>Résumé</a></Button>
    </div>
  );
}

export default MainScreenAppBar;
