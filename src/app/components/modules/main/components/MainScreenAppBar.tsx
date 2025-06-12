import { Button } from '@/app/components/ui/buttons/Button';
import { useEffect, useState } from 'react';

function MainScreenAppBar() {
  const [name, setName] = useState('');

  useEffect(() => {
    function setup() {
      // Name displayed in accordance with available width.
      setName(
        window.innerWidth >= 680
          ? 'Anton Louis Koetzler-Faust'
          : window.innerWidth >= 580
            ? 'Anton Koetzler-Faust'
            : window.innerWidth >= 380
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
      className={'flex w-full flex-row items-center justify-between border-b-2 border-[color:var(--foreground)] bg-background px-4 py-2'}
    >
      <Button asChild variant={'outline'}>
        <a
          target={'_blank'}
          rel={'noopener noreferrer'}
          href={'https://github.com/antonkoetzler'}
        >GitHub</a>
      </Button>
      <p role={'heading'} className="text-[32px] font-semibold">
        {name}
      </p>
      <Button asChild variant={'outline'}>
        <a
          target={'_blank'}
          rel={'noopener noreferrer'}
          href={'https://www.linkedin.com/in/anton-koetzler-faust-002025192/'}
        >LinkedIn</a>
      </Button>
    </div>
  );
}

export default MainScreenAppBar;
