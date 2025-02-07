import { Button } from '@/app/components/ui/buttons/Button';
import { useEffect, useState } from 'react';
import { useTranslation } from 'react-i18next';

function MainScreenAppBar() {
  const { t } = useTranslation();
  const [name, setName] = useState('');

  useEffect(() => {
    function setup() {
      console.log('Setup running');

      // Name displayed in accordance with available width.
      setName(
        window.innerWidth >= 675
          ? 'Anton Louis Koetzler-Faust'
          : window.innerWidth >= 575
            ? 'Anton Koetzler-Faust'
            : window.innerWidth >= 375
              ? 'Anton K-F'
              : 'AKF'
      );
    }

    setup();
    window.addEventListener('resize', setup);
    return () => window.removeEventListener('resize', setup);
  }, []);

  return (
    <div
      role={'presentation'}
      className='flex w-full flex-row items-center justify-between border-b-2 border-[color:var(--foreground)] bg-background p-2'
    >
      <Button asChild>
        <a href={'https://github.com/antonkoetzler'}>GitHub</a>
      </Button>
      <p role={'heading'} className="text-[32px] font-semibold">
        {name}
      </p>
      <Button asChild>
        <a href={t('resumeLink')}>Résumé</a>
      </Button>
    </div>
  );
}

export default MainScreenAppBar;
