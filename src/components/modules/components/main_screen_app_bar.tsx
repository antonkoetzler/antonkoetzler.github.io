import { Button } from '@/components/ui/button';
import { useEffect, useState } from 'react';
import { useTranslation } from 'react-i18next';

function MainScreenAppBar() {
  const { t } = useTranslation();
  const [name, setName] = useState('');

  useEffect(() => {
    const updateName = () => {
      if (window.innerWidth >= 750) {
        setName('Anton Louis Koetzler-Faust');
      } else if (window.innerWidth >= 650) {
        setName('Anton Koetzler-Faust');
      } else {
        setName('Anton K-F');
      }
    };
    updateName();
    window.addEventListener('resize', updateName);
    return () => window.removeEventListener('resize', updateName);
  }, []);

  return (
    <div className='flex flex-row justify-between p-2'>
      <Button asChild><a href={'https://github.com/antonkoetzler'}>GitHub</a></Button>
      <h1>{name}</h1>
      <Button asChild><a href={t('resumeLink')}>Résumé</a></Button>
    </div>
  );
}

export default MainScreenAppBar;